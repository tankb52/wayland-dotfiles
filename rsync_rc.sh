#!/bin/bash

# * 
# * File         : rsync_dotfile.sh
# * Version      : 0.2
# * CreateTime   : 2024-05-19 07:18:05
# * LastEdit     : 2025-01-30 22:34:06
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : 用 rsync 来增量备份wayland相关软件的配置。
# * 

# labwc
rsync -avvP ~/.config/labwc ~/Public/wayland-dotfiles

# wofi
rsync -avvP ~/.config/wofi ~/Public/wayland-dotfiles

# waybar
rsync -avvP ~/.config/waybar ~/Public/wayland-dotfiles

# foot
rsync -avvP ~/.config/foot ~/Public/wayland-dotfiles

# jgmenu
rsync -avvP ~/.config/jgmenu ~/Public/wayland-dotfiles

# kanshi
rsync -avvP ~/.config/kanshi ~/Public/wayland-dotfiles

#sfwbar
rsync -avvP ~/.config/sfwbar ~/Public/wayland-dotfiles

# swaylock
rsync -avvP ~/.config/swaylock ~/Public/wayland-dotfiles

# wlogout
rsync -avvP ~/.config/wlogout ~/Public/wayland-dotfiles

git status
