#!/bin/bash

# * 
# * File Name       : wl_screenrecord.sh
# * Version         : 0.2
# * Created Time    : 2025年02月03日 星期二 02时14分52秒
# * Modified Time   : 2025年02月04日 星期二 04时30分13秒
# * Author          : Knat
# * Copyright       : © 2004-2025 Knat. All rights reserved.
# * Description     : deepseek 脚本：录屏的同时在终端窗口读秒计时。

# 获取当前时间戳
timestamp=$(date +%Y%m%d%H%M%S)
output_file=~/Pictures/screen/grim-$timestamp.mp4

#倒计时脚本，留出选择区域的时间
for i in `seq -w 5 -1 0`
do
    echo -en "你有 \e[0;31m$i\e[0m 秒的时间移开此提示窗口\n时间截止后开始选择区域并录屏...\r"  
  sleep 1;
done

echo "倒计时结束！\n请选择区域并准备录屏！"   


# 启动 wf-recorder 命令
wf-recorder -g "$(slurp)" -f $output_file &

# 获取 wf-recorder 的进程ID
recorder_pid=$!

# 等待直到输出文件被创建
while [ ! -f $output_file ]; do
    sleep 0.1
done

# 初始化计数器
counter=1

# 循环打印递增的数字
while kill -0 $recorder_pid 2>/dev/null; do
    echo $counter
    counter=$((counter + 1))
    sleep 1
done

echo "Recording finished."

exit 0
