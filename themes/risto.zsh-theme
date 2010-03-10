# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
# It might be bash like, but I can't have my co-workers knowing I use zsh
PROMPT='%{$fg[green]%}%n@%m:%{$fg_bold[blue]%}%2~ $(svn_prompt_info)$(git_prompt_info)%{$reset_color%}%(!.#.%%) '
PROMPT='%{$fg[green]%}chris@jolly:%{$fg_bold[blue]%}%2~ $(svn_prompt_info)$(git_prompt_info)%{$reset_color%}%(!.#.%%) '
RPROMPT='%{$fg[red]%}$(rvm_ruby_prompt)%{$reset_color%}%'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[red]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_SVN_PROMPT_SUFFIX="›%{$reset_color%}"


