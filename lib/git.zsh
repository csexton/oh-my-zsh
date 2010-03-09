# Varables for themeing the git info prompt:
# ZSH_THEME_GIT_PROMPT_PREFIX - Prefix at the very beginning of the prompt, before the branch name
# ZSH_THEME_GIT_PROMPT_SUFFIX - At the very end of the prompt
# ZSH_THEME_GIT_PROMPT_DIRTY  - Text to display if the branch is dirty
# ZSH_THEME_GIT_PROMPT_CLEAN  - Text to display if the branch is clean

if [ -z "${ZSH_THEME_GIT_PROMPT_PREFIX}" ]; then ZSH_THEME_GIT_PROMPT_PREFIX="git:("; fi
if [ -z "${ZSH_THEME_GIT_PROMPT_SUFFIX}" ]; then ZSH_THEME_GIT_PROMPT_SUFFIX=")"; fi
if [ -z "${ZSH_THEME_GIT_PROMPT_DIRTY}" ]; then ZSH_THEME_GIT_PROMPT_DIRTY="*"; fi
if [ -z "${ZSH_THEME_GIT_PROMPT_CLEAN}" ]; then ZSH_THEME_GIT_PROMPT_CLEAN=""; fi

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty () {
  gitstat=$(git status 2>/dev/null | grep '\(# Untracked\|# Changes\|# Changed but not updated:\)')

  if [[ $(echo ${gitstat} | grep -c "^# Changes to be committed:$") > 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_DIRTY"
  fi

  if [[ $(echo ${gitstat} | grep -c "^\(# Untracked files:\|# Changed but not updated:\)$") > 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_UNTRACKED"
  fi 

  if [[ $(echo ${gitstat} | grep -v '^$' | wc -l | tr -d ' ') == 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
