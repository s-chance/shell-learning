#!/bin/bash

# shell参数传递

echo "shell 参数传递"
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "第三个参数为：$3"

# 命令执行示例 ./args.sh 1 2 3

# 特殊字符处理参数
# $# 统计参数个数
# $* 所有参数拼接成一个字符串参数
# $@ 类似于$*，但是在用"$@"的情况下，参数的个数不变

echo "参数个数为：$#"
echo "所有参数拼接为字符显示：$*"

echo "--\$*--"
for i in "$*"; do
  echo $i
done

echo "--\$@--"
for i in "$@"; do 
  echo $i 
done
