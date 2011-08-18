# Risto Theme

PROMPT='%{$fg[green]%}%2~ $(git_prompt_info)%{$reset_color%}%(?:%{$fg[blue]%}:$fg[red])%(!.#.%%) %{$reset_color%}'
RPROMPT='%{$fg[red]%}$(~/.rvm/bin/rvm-prompt 2> /dev/null)%{$reset_color%}%'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[red]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}∗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$reset_color%}%{$fg[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""


#ZSH_THEME_GIT_PROMPT_PREFIX="<"
#ZSH_THEME_GIT_PROMPT_SUFFIX=">"
#ZSH_THEME_GIT_PROMPT_DIRTY=""
#ZSH_THEME_GIT_PROMPT_CLEAN=""
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"
