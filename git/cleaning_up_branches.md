Remove remotely deleted branches:

`git remote prune origin`

Remove local branches tracking remotely merged branches:

`git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d`

(Also `git gc` exists apparently)
