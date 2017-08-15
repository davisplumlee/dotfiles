#!/bin/bash
shopt -s dotglob
HOMEREPO=$HOME/.dotfiles/*

for dotfile in $HOMEREPO
do
    if [ ! "$(basename $dotfile)" == ".git" ]; then
      target=$HOME/$(basename $dotfile)
      [ ! -r $target ] && ln -s $dotfile $target && echo "Linked $(basename $dotfile)"
    else
      echo "Skipping .git folder"
    fi
done