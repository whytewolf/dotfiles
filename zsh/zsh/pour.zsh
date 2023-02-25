function pour() {
  os=`uname -s`
  if [[ "$os" == 'Darwin' ]]
  then
    brew_pour
  fi
  vim_plug_madness
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

function vim_plug_madness() {
  vim +PlugClean +qall
  vim +PlugInstall +qall
  vim +PlugUpdate +qall
  vim +PlugUpgrade +qall
}
