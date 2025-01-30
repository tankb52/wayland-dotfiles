#!/bin/bash

# * 
# * File         : wayland_shot.sh
# * Version      : 0.1
# * CreateTime   : 2025-01-20 02:40:08
# * LastEdit     : 2025-01-20 02:43:42
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : wayland下面的截图脚本，结合多个工具。
# * 


timestamp=$(date +"%Y%m%d-%H%M%S")
grim -g "$(slurp )" -t png $HOME/Pictures/screen/grim-$timestamp.png
ksnip $HOME/Pictures/screen/grim-$timestamp.png
