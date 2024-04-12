function pour() {
  os=`uname -s`
  if [[ "$os" == 'Darwin' ]]
  then
    brew_pour
  fi
  vim_plug_madness
  os=`lsb_release -i -s`
  if [[ "$os" == "Ubuntu" ]]
  then
    ubuntu_pour
  fi
}

function ubuntu_pour() {
  sudo nala update
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
