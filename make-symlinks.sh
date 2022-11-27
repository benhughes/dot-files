#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/code-repo/dot-files

# old dotfiles backup directory
olddir=~/.dot-files-backup

# list of files/folders to symlink in homedir
files="zshrc"

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles"
mkdir -p $olddir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done


echo "Moving neovim-config to backup"
mv -f ~/.config/nvim $olddir/.
echo "Creating neovim symlink"
ln -s $dir/neovim-config ~/.config/nvim
echo "done"
