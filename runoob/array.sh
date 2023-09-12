#!/bin/bash

# bash不支持多维数组，只有一位数组，没有大小限制

# 定义数组
array=(1,2,3)

array1=(
	4
	5
	6
)

# 下标可以不连续，范围没有限制(当然，不能小于0)
array2[0]=7
array2[1]=8
array2[4]=9

# 读取数组
value4=${array2[4]}

# @可以获取所有元素
echo ${array2[@]}

# 数组长度
length=${#array2[@]}
# 另一种写法
length=${#array2[*]}
# 获取单个元素长度
length=${#array2[4]}

# 关联数组
# 下标可以是任意的字符串或整数
declare -A site=(["google"]="www.google.com" ["runoob"]="www.runoob.com" ["taobao"]="www.taobao.com")

declare -A hobby
hobby["game"]="www.game.com"
hobby["music"]="music.163.com"
hobby["video"]="www.bilibili.com"

echo ${hobby["video"]}

echo "所有元素：${hobby[*]}"
echo "所有元素：${hobby[@]}"

# 获取所有下标
echo "所有下标：${!hobby[*]}"
echo "所有下标：${!hobby[@]}"

# 获取长度
echo "长度：${#hobby[*]}"
echo "长度：${#hobby[@]}"
