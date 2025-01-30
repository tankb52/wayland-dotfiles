#!/bin/bash

# * 
# * File         : showDeskTop.sh
# * Version      : 0.1
# * CreateTime   : 2025-01-20 02:01:14
# * LastEdit     : 2025-01-20 02:12:04
# * Author       : Knat
# * Licence      : Copyright © 2025 Knat. All Rights Reserved.
# * Desc         : Win+D show desktop, like in  Openbox.
# *                from https://github.com/labwc/labwc/issues/2293
# * 

CACHE_FILE="$HOME/.cache/.tsd"

if wlrctl window find state:unminimized; then
	wlrctl window list state:unminimized > $CACHE_FILE
	wlrctl window minimize state:unminimized
else 
	while IFS=':' read -r app_id title; do
		wlrctl window focus app_id:$app_id state:minimized
	done < "$CACHE_FILE"
	> "$CACHE_FILE"
fi

