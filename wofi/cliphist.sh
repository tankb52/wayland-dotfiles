#!/bin/bash

# * 
# * File         : cliphist.sh
# * Version      : 0.1
# * CreateTime   : 2025-01-20 00:46:17
# * LastEdit     : 2025-01-20 00:47:05
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : 尝试用脚本来启动剪贴板。
# * 



cliphist list | wofi --dmenu | cliphist decode | wl-copy
