#!/bin/bash

# 读取标准输入
read name
echo "This is $name"

# 换行，这里会空出一行
echo -e "This is \n" # -e表示开启转义
echo "$name"

# 不换行，这里两个echo输出到同一行
echo -e "This is \c"
echo "$name"

echo "This is a test file" >myfile

# 原样输出
echo '$name\"'

# 显示命令执行结果
echo $(date)
