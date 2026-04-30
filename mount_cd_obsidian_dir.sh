#!/bin/sh

# script for iOS iSH app

# select vault with plugin here
mount_dir="/mnt"

mount -t ios . "$mount_dir"

cd "$mount_dir"

# cd into mounted vault found by .obsidian directory inside it
obsidian_path="$(find . -type d -name ".obsidian" -print -quit)"

if [ ! -d "$obsidian_path" ]; then
  echo "Directory '.obsidian' not found"
  exit 1
fi

cd "$obsidian_path"

plugin_path="plugins/google-drive-sync"

# create if not exists
mkdir -p "$plugin_path"

cd "$plugin_path"