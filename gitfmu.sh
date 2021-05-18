if test "$#" = 1
then 
    git stash; git co "$@"; git fetch upstream; git merge upstream/"$@"
elif test "$#" = 2
then
    git stash save "$1"; git co "$2"; git fetch upstream; git merge upstream/"$2"
fi
