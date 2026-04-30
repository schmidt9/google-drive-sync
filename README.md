Repo for quick testing of https://github.com/schmidt9/Obsidian-Google-Drive on iOS using **iSH** app

- Download 2 scripts in iSH (both are needed)

```
wget https://raw.githubusercontent.com/schmidt9/google-drive-sync/refs/heads/main/update_plugin.sh && chmod +x update_plugin.sh
```
```
wget https://raw.githubusercontent.com/schmidt9/google-drive-sync/refs/heads/main/mount_cd_obsidian_dir.sh && chmod +x mount_cd_obsidian_dir.sh
```
- Run main script `update_plugin.sh` to mount vault and update plugin
- Also you can run helper script `mount_cd_obsidian_dir.sh` separately just to mount vault and cd into its `.obsidian` directory

# Workarounds

Reset option just resets changes in local files **if the files exist**, it won't download missing files.
So to force pull files to an empty repo: 
- close Obsidian
- set `lastSyncedAt: 0` in `data.json`
- open Obsidian (plugin performs auto pull on start)