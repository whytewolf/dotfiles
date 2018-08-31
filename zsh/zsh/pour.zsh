function pour() {
  os=`uname -s`
  if [[ "$os" == 'Darwin' ]]
  then
    brew_pour
  fi
  vundle_madness
}

function brew_pour() {
  brew update
  brew upgrade
  brew prune
}

function brew_status() {
  brew doctor
  brew missing
}

function vundle_madness() {
  vim +PluginInstall +qall
  vim +PluginUpdate +qall
  vim +PluginClean +qall
}
