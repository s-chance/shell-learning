#!/bin/bash

# 流程控制

a=10
b=20
if [ $a == $b ]
then
  echo "a 等于 b"
elif [ $a -gt $b ]
then
  echo "a 大于 b"
elif [ $a -lt $b ]
then
  echo "a 小于 b"
else
  echo "没有符合的条件"
fi

# (())里面可以直接使用 > 和 < 符号
if (( $a == $b ))
then
  echo "a 等于 b"
elif (( $a > $b ))
then
  echo "a 大于 b"
elif (( $a < $b ))
  echo "a 小于 b"
else
  echo "没有符合的条件"
fi

# if-else经常与test命令结合使用
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
  echo "两个数字相等"
else
  echo "两个数字不相等"
fi

# for循环
# 顺序输出数字
for loop in 1 2 3 4 5
do
  echo "The value is: $loop"
done
# 顺序输出字符串
for str in This is a string
do
  echo $str
done

# while循环
int=1
while(( $int<=5 ))
do
  echo $int
  let "int++" # 使用了let命令自增
done
# 循环读取输入
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read NAME
do
  echo "是的! $NAME 是一个好网站"
done

# 无限循环
# while : ...
# while true ...
# for (( ; ; ))

# until循环
# 直到条件为true结束循环
a=0
until [ ! $a -lt 10 ]
do
  echo $a
  a=`expr $a + 1`
done

# case多选择
echo '输入1-4之间的数字: '
echo '你输入的是: '
read aNum
case $aNum in
  1) echo '你选择了 1'
  ;;
  2) echo '你选择了 2'
  ;;
  3) echo '你选择了 3'
  ;;
  4) echo '你选择了 4'
  ;;
  *) echo '未预期的输入'
  ;;
esac

# 字符串匹配
site="runoob"

case "$site" in
  "runoob") echo "菜鸟教程"
  ;;
  "google") echo "Google Search"
  ;;
  "taobao") echo "淘宝网"
  ;;
esac

# 跳出循环 break 和 continue

while :
do
  echo -n "输入1-5之间的数字: "
  read input
  case $input in
    1|2|3|4|5) echo "你输入的是 $input"
    ;;
    *) echo "跳出循环"
       break 
    ;;
  esac
done

while :
do
  echo -n "输入1-5之间的数字: "
  read input
  case $input in
    1|2|3|4|5) echo "你输入的是 $input"
    ;;
    *) echo "继续输入"
       continue
    ;;
  esac
done




