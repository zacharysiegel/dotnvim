#!/bin/zsh

directory=$(realpath ~)
file_name='.ideavimrc'
target_path="$directory/$file_name"
source_path='./.ideavimrc'

if test -e "$target_path"; then
    echo "Backing up $target_path to $target_path.bak"
    mv "$target_path" "$target_path.bak"

    echo "Overwriting $target_path"
else
    echo "Writing $target_path"
fi

mkdir -p "$directory"
ln -s $(realpath "$source_path") "$target_path"
ls -alF --color=auto "$target_path"

