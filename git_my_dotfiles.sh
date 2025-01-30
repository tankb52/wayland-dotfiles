#!/bin/bash
#同步文件到 github
curtime=$(date +%Y%m%d\-%H%M%S)
cd ~/Public/wayland-dotfiles/
git add .						#添加所有文件（配合.gitignore）
git status						#查看当前文件变化
read -p "Enter a commit for this submission: " commit	#输入本次注释
git commit -m "$curtime：$commit"			#以时间：注释的格式提交
git push -u origin main					#提交到仓库
