# Risto Theme

#PROMPT='%{$fg[green]%}%n@%m:%{$fg[blue]%}%2~ $(git_prompt_info)%{$reset_color%}%(?::$fg[red])%(!.#.%%) %{$reset_color%}'
PROMPT='%{$fg[blue]%}%2~ $(git_prompt_info)%{$reset_color%}%(?::$fg[red])%(!.#.%%) %{$reset_color%}'
RPROMPT='%{$fg_bold[red]%}$(~/.rvm/bin/rvm-prompt 2> /dev/null)%{$reset_color%}%'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="$(git_prompt_info)%{$fg_bold[red]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}∗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$reset_color%}%{$fg[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
