dotfiles
========





Fixes for some things
---------------------

Vundle requires filetype to be off during setup portion of vim. however calling vi causes filetype off to through an error. 
you can get around this by always using vim directly instead of vi. [my perfered method] 

git is setup for vi by default but this can be quickly changed with `git config --global core.editor $(which vim)`
