#!/bin/bash

# Variables
dir=~/REPOS/dotfiles
files="
  .bash_profile
  .gitignore
  .editorconfig
  .hyper.js
"

# Change to the .dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...Done"

# Create file symlinks
for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -fs $dir/$file ~/$file
  echo "...Done"
done