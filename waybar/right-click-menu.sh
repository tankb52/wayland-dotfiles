#!/bin/bash

# * 
# * File         : right-click-menu.sh
# * Version      : 0.1
# * CreateTime   : 2025-02-03 03:31:44
# * LastEdit     : 2025-02-03 03:32:01
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : waybar右键菜单
# * 



# 定义菜单选项和对应命令
menu_options=(
  "  Settings"   "gnome-control-center"  # 示例：打开系统设置
  "  Restart Bar" "killall waybar && waybar &"
  "  Reboot"     "systemctl reboot"
  "  Lock"       "swaylock"
)

# 生成 wofi 菜单
selected=$(printf "%s\n" "${menu_options[@]}" | wofi --dmenu -p "Menu" --lines 4)

# 执行对应命令
case "$selected" in
  "  Settings") gnome-control-center ;;
  "  Restart Bar") killall waybar && waybar & ;;
  "  Reboot") systemctl reboot ;;
  "  Lock") swaylock ;;
esac

