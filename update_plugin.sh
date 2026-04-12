#!/bin/sh

# script for iOS iSH app

# select vault with plugin here
mount -t ios . /mnt

cd /mnt

# cd into mounted vault found by .obsidian directory inside it
cd "$(find . -type d -name ".obsidian" -print -quit)"

# create if not exists
mkdir -p "plugins"

cd "plugins"

# (re)download repo 
rm -rf google-drive-sync

git clone https://github.com/schmidt9/google-drive-sync.git

echo "repo cloned"