# Varables for themeing the svn info prompt:
# ZSH_THEME_SVN_PROMPT_PREFIX - Prefix at the very beginning of the prompt, before the branch name
# ZSH_THEME_SVN_PROMPT_SUFFIX - At the very end of the prompt
# ZSH_THEME_SVN_PROMPT_DIRTY  - Text to display if the branch is dirty
# ZSH_THEME_SVN_PROMPT_CLEAN  - Text to display if the branch is clean

if [ -z "${ZSH_THEME_SVN_PROMPT_PREFIX}" ]; then ZSH_THEME_SVN_PROMPT_PREFIX="svn:("; fi
if [ -z "${ZSH_THEME_SVN_PROMPT_SUFFIX}" ]; then ZSH_THEME_SVN_PROMPT_SUFFIX=")"; fi
if [ -z "${ZSH_THEME_SVN_PROMPT_DIRTY}" ]; then ZSH_THEME_SVN_PROMPT_DIRTY="*"; fi
if [ -z "${ZSH_THEME_SVN_PROMPT_CLEAN}" ]; then ZSH_THEME_SVN_PROMPT_CLEAN=""; fi

svn_prompt_info() {
  if [[ -d '.svn' ]]; then
    local svnroot="$(svn info|sed -n 's/^Repository Root: //p')"
    local svnpath="$(svn info|sed -n 's/^URL: //p')"
    builtin echo -ne "$ZSH_THEME_SVN_PROMPT_PREFIX$(echo $svnpath | sed -e "s|$svnroot/||" -e "s|/.*||")$(parse_svn_dirty)$ZSH_THEME_SVN_PROMPT_SUFFIX"
  fi
}

parse_svn_dirty() {
  #Don't try to calculate this if thge dirty prompt is not set (this is the part that takes so long)
  if [ -z "${ZSH_THEME_SVN_PROMPT_DIRTY}" ]; then
    if svn status 2> /dev/null | egrep -q . ; then
      builtin echo -ne "$ZSH_THEME_SVN_PROMPT_DIRTY"
    else
      builtin echo -ne "$ZSH_THEME_SVN_PROMPT_CLEAN"
    fi
  fi
}

