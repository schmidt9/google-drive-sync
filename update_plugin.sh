#!/bin/sh

# script for iOS iSH app

source ./mount_cd_obsidian_dir.sh

plugin_path="plugins/google-drive-sync"

# create if not exists
mkdir -p "$plugin_path"

cd "$plugin_path"

# (re)download and update files 
url="https://raw.githubusercontent.com/schmidt9/google-drive-sync/refs/heads/main"

files="manifest.json main.js styles.css"

for file in ${files}; do
	# overwrite existing files
    wget -O $file "$url/$file"
done

echo "done"