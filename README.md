# .dotfiles

### Installation

```bash
cd .dotfiles
./install.sh
```

If you want iwd as your NetworkManager backend, create this file:
/etc/NetworkManager/conf.d/wifi_backend.conf
```
[device]
wifi.backend=iwd
wifi.iwd.autoconnect=false
```

### What is installed

- zsh config
- my own git config **(if you are going to use this config don't forget to change the name and mail in the config)**
- nvim config
- nftables config with support for docker and syncthing
- patched and confiured dwm
- configured dwmblocks-async
- patched and configured dmenu
- patched and configured st
- slock
- configured dunst
- some scripts, packages and utlity files that make it all work
