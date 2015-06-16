#!/bin/bash
#
# This is a script to bootstrap the symlinking of dotfiles to targets in the home directory. 

dotfiles=~/.dotfiles

files=$(find $dotfiles -not \( -path "*.git*" -or -name "README.md" -or -name "bootstrap.sh" \) -mindepth 1 -maxdepth 1)

echo "Creating links..."

for file in $files; do
  config=~/.${file#$dotfiles/} 
  if [ -f $config ] || [ -d $config ]; then
    echo "$config already exists. Skipped!"
  else
    echo "Symlinking $file to $config ..."
    ln -s $file $config 
  fi
done

echo "Done!"
