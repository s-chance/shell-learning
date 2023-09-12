#!/bin/bash

# shell运算符
# 表达式和运算符之间要有空格
# 算术运算符
val=$(expr 2 + 2)
echo "两数之和为：$val"

a=10
b=20

val=$(expr $a + $b)
echo "a + b = $val"

val=$(expr $a - $b)
echo "a - b = $val"

val=$(expr $a \* $b)
echo "a * b = $val"

val=$(expr $b / $a)
echo "b / a = $val"

val=$(expr $b % $a)
echo "b % a = $val"

if [ $a == $b ]; then
	echo "a 等于 b"
fi
if [ $a != $b ]; then
	echo "a 不等于 b"
fi

# 关系运算符
# 只支持数字，不支持字符串，除非字符串的值是数字
# -eq等于
if [ $a -eq $b ]; then
	echo "$a -eq $b : a 等于 b"
else
	echo "$a -eq $b : a 不等于 b"
fi
# -ne不等于
if [ $a -ne $b ]; then
	echo "$a -ne $b : a 不等于 b"
else
	echo "$a -ne $b : a 等于 b"
fi
# -gt大于
if [ $a -gt $b ]; then
	echo "$a -gt $b : a 大于 b"
else
	echo "$a -gt $b : a 不大于 b"
fi
# -lt小于
if [ $a -lt $b ]; then
	echo "$a -lt $b : a 小于 b"
else
	echo "$a -lt $b : a 不小于 b"
fi
# -ge大于等于
if [ $a -ge $b ]; then
	echo "$a -ge $b : a 大于等于 b"
else
	echo "$a -ge $b : a 小于 b"
fi
# -le小于等于
if [ $a -le $b ]; then
	echo "$a -le $b : a 小于等于 b"
else
	echo "$a -le $b : a 大于 b"
fi

# 布尔运算符
# !非
if [ $a != $b ]; then
	echo "$a != $b : a 不等于 b"
else
	echo "$a == $b : a 等于 b"
fi
# -a与
if [ $a -lt 100 -a $a -gt 15 ]; then
	echo "$a 小于 100 且大于 15 : 返回 true"
else
	echo "$a 小于 100 且大于 15 : 返回 false"
fi
# -o或
if [ $a -lt 100 -o $b -gt 100 ]; then
	echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
	echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi

# 逻辑运算符
# &&逻辑与
if [[ $a -lt 100 && $b -gt 100 ]]; then
	echo "true"
else
	echo "false"
fi
# ||逻辑或
if [[ $a -lt 100 || $b -gt 100 ]]; then
	echo "true"
else
	echo "false"
fi

# 字符串运算符

a="abc"
b="efg"

# = 检测两个字符串是否相等，相等返回 true
if [ $a = $b ]; then
	echo "$a = $b : a 等于 b"
else
	echo "$a = $b : a 不等于 b"
fi
# != 检测两个字符串是否不相等，不相等返回 true
if [ $a != $b ]; then
	echo "$a != $b : a 不等于 b"
else
	echo "$a != $b : a 等于 b"
fi
# -z 检测字符串长度是否为0，为0返回 true
if [ -z $a ]; then
	echo "-z $a : 字符串长度为 0"
else
	echo "-z $a : 字符串长度不为 0"
fi
# -n 检测字符串长度是否不为0，不为0返回 true
if [ -n $a ]; then
	echo "-n $a : 字符串长度不为 0"
else
	echo "-n $a : 字符串长度为 0"
fi
# $ 检测字符串是否不为空，不为空返回 true
if [ $a ]; then
	echo "$a : 字符串不为空"
else
	echo "$a : 字符串为空"
fi

# 文件测试运算符
file="./test.sh"
if [ -r $file ]; then
	echo "文件可读"
else
	echo "文件不可读"
fi
if [ -w $file ]; then
	echo "文件可写"
else
	echo "文件不可写"
fi
if [ -x $file ]; then
	echo "文件可执行"
else
	echo "文件不可执行"
fi
if [ -f $file ]; then
	echo "文件为普通文件"
else
	echo "文件为特殊文件"
fi
if [ -d $file ]; then
	echo "文件是目录"
else
	echo "文件不是目录"
fi
if [ -s $file ]; then
	echo "文件不为空"
else
	echo "文件为空"
fi
if [ -e $file ]; then
	echo "文件存在"
else
	echo "文件不存在"
fi
