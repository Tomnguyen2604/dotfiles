#!/bin/bash

# Dotfiles installer script
# This script creates symlinks from the home directory to dotfiles in ~/dotfiles

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".bashrc .bash_profile .zshrc .zprofile .gitconfig .hyper.js"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -f ~/$file ]; then
        echo "Moving existing $file from ~ to $olddir"
        mv ~/$file ~/dotfiles_old/
    fi
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

echo "Installation complete!"
echo "You may want to reload your shell or restart your terminal."
