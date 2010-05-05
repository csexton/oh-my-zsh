
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

# Display the ruby version if it was selected by RVM
function rvm_ruby_prompt {
  if (declare -f rvm > /dev/null) {
    echo "$rvm_ruby_interpreter $rvm_ruby_version"
  }
}
