if [ -d ~/go/bin ] && [ "$GOBIN" != 'True' ] ; then
  export PATH=$HOME/go/bin:$PATH
  export GOBIN='True'
fi

