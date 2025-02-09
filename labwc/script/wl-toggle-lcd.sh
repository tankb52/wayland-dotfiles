#!/bin/bash

# * 
# * File Name       : wl-toggle-lcd.sh
# * Version         : 0.1
# * Created Time    : 2025年02月09日 星期日 19时16分50秒
# * Modified Time   : 2025年02月09日 星期日 19时18分37秒
# * Author          : Knat
# * Copyright       : © 2004-2025 Knat. All rights reserved.
# * Description     : wayland下的关闭/打开显示器电源。
# * 

screen=HDMI-A-1
wlr-randr --output ${screen} --toggle

exit 1

