function preexec {
  emulate -L zsh
}

function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_oh_my_zsh() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /bin/sh $ZSH/tools/upgrade.sh
}

function tab() {
  if [[ $DESKTOP_SESSION == "gnome" ]]; then
    # requires xdotool to be installed which is a simple: `sudo apt-get install xdotool`
    nocorrect xdotool key ctrl+shift+t
  else
    osascript 2>/dev/null <<EOF
      tell application "System Events"
        tell process "Terminal" to keystroke "t" using command down
      end
      tell application "Terminal"
        activate
        do script with command "cd \"$PWD\"; clear; $*" in window 1
      end tell
EOF
  fi
}

function take() {
  mkdir -p $1
  cd $1
}

function tm() {
  cd $1
  mate $1
}
