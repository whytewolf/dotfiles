if status --is-interactive
  set PATH /usr/bin /bin /usr/sbin /sbin
  set PATH $HOME/Applications /usr/local/bin $PATH
end

if test -z "$TMUX"
  set TERM screen-256color
end

set -x EDITOR vim

set -e GREP_OPTIONS
set -x GREP_COLOR "1;33"

alias nerd 'vim +NERDTree'
alias vundle 'vim +PluginUpdate +qall'
alias gitclean 'git branch --merged master | grep -v " master" | grep -v "\*" | xargs -n 1 git branch -d'

# Abbreviations
## Mo Git Mo Problems
abbr --add gad git add --all
abbr --add gap git add --patch
abbr --add gc git commit -v
abbr --add gp git push
abbr --add gpu git pull
abbr --add gst git status

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
test -e {$HOME}/.local.fish ; and source {$HOME}/.local.fish
