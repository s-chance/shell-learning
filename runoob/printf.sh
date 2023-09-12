#!/bin/bash

# printf命令

echo "Hello, Shell"

printf "Hello, Shell\n"

# 格式替代符
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2ff\n" 郭芙 女 47.9876

# %s输出一个字符串
# %c输出一个字符
# %d输出一个整数
# %f输出一个实数
#
# %-10s指一个宽度为10个字符（-表示左对齐，没有则表示右对齐）
# %-4.2f指格式化为小数，其中.2指保留2位小数

printf "%d %s\n" 1 "abc"

printf '%d %s\n' 1 "abc"

printf %s abcdef

printf "\n"

# 多出的参数同样输出
printf %s abc def

printf "\n"

printf "%s\n" abc def

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有arguments，那么%s用NULL代替，%d用0代替
printf "%s and %d \n"

# %b占位符识别参数中的转义字符
printf "a string, no processing:<%b>\n" "A\nB"
