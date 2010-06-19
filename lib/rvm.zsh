# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  echo "($ruby_version)"
}

# Display the ruby version if it was selected by RVM
function rvm_ruby_prompt {
#  if [[ -z "$rvm_ruby_version" ]] ; then
#    echo "$rvm_ruby_interpreter $rvm_ruby_version"
#  fi

  if (declare -f rvm > /dev/null) {
    if [[ "$rvm_ruby_interpreter" != 'system' ]] ; then
      echo "$rvm_ruby_interpreter $rvm_ruby_version"
    fi
  }
}

# Change to the gem dir specified by RVM Ruby selector
function gemdir {
  if [[ -z "$1" ]] ; then
    echo "Changed to $(rvm gemdir)/gems"
    cd $(rvm gemdir)/gems
  else
    rvm "$1"
    echo "Changed to $(rvm gemdir)/gems"
    cd $(rvm gemdir)/gems
    pwd
  fi
}

