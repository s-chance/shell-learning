#!/bin/bash

# shell test命令

# 数值测试
num1=100
num2=100

if test $((num1)) -eq $((num2)); then
	echo "两数相等"
else
	echo "两数不相等"
fi

a=5
b=6

# []内执行基本的算术运算
result=$((a + b)) # 不能有空格
echo "result: $result"

# 字符串测试
val1="runoob1"
val2="runoob"
if test $val1 = $val2; then
	echo "字符串相等"
else
	echo "字符串不相等"
fi

# 文件测试
cd /bin
if test -e ./bash; then
	echo "文件存在"
else
	echo "文件不存在"
fi
