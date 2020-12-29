#!/bin/sh
set -e

INITDIR="$HOME/.init"

if [ -d "$INITDIR" ]; then
    cd "$INITDIR"
    git reset --quiet --hard main
    git pull --quiet
    cd $OLDPWD
else
    git clone --depth 1 https://github.com/pacroy/sh-init.git "$INITDIR"
fi
chmod +x $INITDIR/*.sh
$INITDIR/install2.sh $INITDIR
