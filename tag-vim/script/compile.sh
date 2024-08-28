#!/bin/bash

# 获取当前文件名，不包括扩展名
filename=$(basename "$1" .cpp)

# 创建 bin 目录（如果不存在）
mkdir -p "./bin"

# 编译当前文件，将可执行文件放入 bin 目录
g++ "$1" -o "./bin/$filename"

# 检查编译是否成功
if [ $? -eq 0 ]; then
    echo "编译成功：./bin/$filename"
else
    echo "编译失败"
fi

