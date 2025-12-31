Create keyboard/mouse macros using [ydotool](https://github.com/ReimuNotMoe/ydotool) with hotkeys. 

This creates user scoped systemd service to invoke ydotool macros in a loop (programmed in bash). 

1. Create symlinks:

```
chmod +x ./single-30s.sh
ln -s $PWD/single-30s.sh ~/.local/bin/single-30s.sh
ln -s $PWD/single-30s.service ~/.config/systemd/user/single-30s.service
```

2. Start service with hotkey, which I map in my window manager. 

hyprland:

```
bindd = SUPER, KP_End, Macros, exec, systemctl --user is-active single-30s.service && systemctl --user stop single-30s.service || systemctl --user start single-30s.service
```

niri:

```
Mod+KP_end { spawn "systemctl --user is-active single-30s.service && systemctl --user stop single-30s.service || systemctl --user start single-30s.service" }
```
