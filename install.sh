#!/bin/bash

## See also:
## https://github.com/necolas/dotfiles/blob/master/bin/dotfiles

# Variables
dir=~/REPOS/dotfiles
files="
  .zshrc
  .gitconfig
  .gitignore_global
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

# Verify: $ ls -la | grep .-\>