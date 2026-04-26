Repo for quick testing of https://github.com/schmidt9/Obsidian-Google-Drive on iOS using **iSH** app

Download update script in iSH and run

```
wget https://raw.githubusercontent.com/schmidt9/google-drive-sync/refs/heads/main/update_plugin.sh && chmod +x update_plugin.sh
```

# Workarounds

Reset option just resets changes in local files **if the files exist**, it won't download missing files.
So to force pull files to an empty repo: 
- close Obsidian
- set `lastSyncedAt: 0` in `data.json`
- open Obsidian (plugin performs auto pull on start)