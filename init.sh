#!/bin/bash
shopt -s dotglob
HOMEREPO=$HOME/.dotfiles/*

for dotfile in $HOMEREPO
do
    target=$HOME/$(basename $dotfile)
    [ ! -r $target ] && ln -s $dotfile $target
done