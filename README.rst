dotfiles
========

Setup
-----

currently there is not an automated way to install these. however I will most likely build something later.

1. ln -sf ~/{{dotfilelocation}}/vim/vim ~/.vim
2. ln -sf ~/{{dotfilelocation}}/vim/vimrc ~/.vimrc
3. ln -sf ~/{{dotfilelocation}}/tmux/tmux.conf ~/.tmux.conf
4. ln -sf ~/{{dotfilelocation}}/bash/bash_profile.d/powerline.{{os}} ~/.bash_profile.d/powerline
4. ln -sf ~/{{dotfilelocation}}/bash/bash_profile ~/.bash_profile

of coarse keep in mind you don't have to do any of these. just the ones you want.


Fixes for some things
---------------------

Vundle requires filetype to be off during setup portion of vim. however calling vi causes filetype off to through an error. 
you can get around this by always using vim directly instead of vi. [my perfered method] 

git is setup for vi by default but this can be quickly changed with ``git config --global core.editor $(which vim)``

Vundale Update
--------------

once you installed the vimrc you can quickly update your install vundle packages with
``vim +PluginInstall +qall`` and update later with ``vim +PluginUpdate +qall``
vim should run in most situations with this config. it is setup to block functionality that is not possable with the vim system. 
