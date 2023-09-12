#!/bin/bash

# shell字符串
# 引号可用单、双引号，也可不加
# 单引号的字符会原样输出，因此不能用于变量(转义无效)
str='this is a string'

# 双引号里可以包含变量，也可以出现转义字符
name="runoob"
str="I just a \"$name\"!\n"
echo -e $str

# 拼接字符串
a="entropy"
# 双引号拼接
greeting="hello, "$a" !"
greet1="hello, "${a}" !"
echo $greeting $greet
# 单引号拼接
greet2='hello, '$a' !'
greet3='hello, '${a}' !'
echo $greet2 greet3

# 获取字符串长度
string="whoami"
echo ${#string} # 字符串变量${#string}等价于${#string[0]}
echo ${#string[0]}

# 提取字符子串
# 从第2个字符开始截取4个字符
text="runoob is a great site"
echo ${string:1:4} # 索引从0开始

# 查找字符子串
# 查找i或o出现的位置，优先最早出现的字符，位置是索引值+1
content="runoob is a great site"
echo `expr index $content io`
