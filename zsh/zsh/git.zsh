function newbranch () {
  git checkout master
  git fetch --all
  git pull
  git push origin/master
  git checkout -b $1
  git push -u origin $1
}
