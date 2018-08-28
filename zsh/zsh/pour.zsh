function pour() {
  os=`uname -s`
  if [[ "$os" == 'Darwin' ]]
  then
    brew_pour
  fi
  vim +PluginInstall +qall
  vim +PluginUpdate +qall
}

function brew_pour() {
  brew update
  brew upgrade
  brew prune
}

function brew_status {
  brew doctor
  brew missing
}
