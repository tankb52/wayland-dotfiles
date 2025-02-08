#!/bin/bash

# * 
# * File         : wl_screenshot.sh
# * Version      : 0.1
# * CreateTime   : 2025-01-20 02:40:08
# * LastEdit     : 2025-02-02 22:26:31
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : wayland下面的截图脚本，结合多个工具。
# * 


timestamp=$(date +"%Y%m%d-%H%M%S")
grim -g "$(slurp )" -t png $HOME/Pictures/screen/grim-$timestamp.png
ksnip $HOME/Pictures/screen/grim-$timestamp.png

exit 0
