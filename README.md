Repo for quick testing of https://github.com/schmidt9/Obsidian-Google-Drive among others on iOS using **iSH** app

- Update repos in iSH to successfully install git

```
echo https://dl-cdn.alpinelinux.org/alpine/v3.18/main > /etc/apk/repositories
echo https://dl-cdn.alpinelinux.org/alpine/v3.18/community >> /etc/apk/repositories
rm -rf /ish
apk upgrade && apk fix
```

- Install git in iSH:

```
apk add git
```

- Download update script in iSH and run:

```
wget https://raw.githubusercontent.com/schmidt9/google-drive-sync/refs/heads/main/update_plugin.sh && chmod +x update_plugin.sh
```