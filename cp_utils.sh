#!/bin/bash

# 源文件夹路径（包含所有子文件夹）
source_folder="/home/save/filebrowser/srv/Cc/mp3_back"

# 目标文件夹路径（用于存储所有的 .mp3 文件）
destination_folder="/home/save/filebrowser/srv/Cc/mp3"

# 创建目标文件夹（如果不存在）
mkdir -p "$destination_folder"

# 查找所有 .mp3 文件并复制到目标文件夹
find "$source_folder" -type f -name "*.mp3" -exec cp {} "$destination_folder" \;

echo "所有 .mp3 文件已复制到目标文件夹：$destination_folder"
