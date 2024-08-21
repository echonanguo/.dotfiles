#!/bin/bash

# 获取当前文件名，不包括扩展名
filename=$(basename "$1" .cpp)

# 运行 bin 目录下的可执行文件
if [ -f "./bin/$filename" ]; then
    "./bin/$filename"
else
    echo "可执行文件不存在，请先编译。"
fi

