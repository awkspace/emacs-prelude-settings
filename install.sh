#!/bin/bash

git clone https://github.com/bbatsov/prelude ~/.emacs.d

cd ~/.emacs.d/personal
git init

ssh -o ConnectTimeout=3 -T git@github.com </dev/null 2>&1 | grep "^Hi awkspace!" > /dev/null
if [[ $? -eq 0 ]]
then
    git remote add github ssh://git@github.com/awkspace/emacs-settings
else
    git remote add github https://github.com/awkspace/emacs-settings
fi

git fetch github
git reset --hard github/master
