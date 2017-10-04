function pour() {
  brew update
  brew upgrade
  brew prune
  vim +PluginInstall +qall
  vim +PluginUpdate +qall
}

function brew_status {
  brew doctor
  brew missing
}
