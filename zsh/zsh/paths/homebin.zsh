if [ -d ~/bin ] && [ "$HOMEBIN" != 'True' ] ; then
  export PATH=$HOME/bin:$PATH
  export HOMEBIN='True'
fi
