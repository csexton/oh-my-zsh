case "$TERM" in
  xterm*|rxvt*)
    preexec () {
      print -Pn "\e]0;%n@%m: $1\a"  # xterm
    }
    precmd () {
      print -Pn "\e]0;%n@%m: %~\a"  # xterm
    }
    ;;
esac
