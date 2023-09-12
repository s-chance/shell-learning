#!/bin/bash

# shell 函数

foo() {
	echo "This is a shell"
}

echo "foo start"
foo
echo "foo over"

fooWithReturn() {
	echo "two numbers sum"
	echo "input the first"
	read firstNumber
	echo "input the second"
	read secondNumber
	return $(($firstNumber + $secondNumber))
}

fooWithReturn
# $? 用于获取函数的返回值
echo "The result is $?"

funWithParam() {
	echo "第一个参数：$1"
	echo "第二个参数：$2"
	echo "第十个参数：$10" # 这里会直接输出$10
	echo "第十个参数：${10}"
	echo "第十一个参数：${11}"
	echo "参数有 $# 个"
	echo "包含所有参数的字符串：$*"
}
