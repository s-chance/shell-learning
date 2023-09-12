#!/bin/bash

# shell 输入输出重定向

# 输出重定向
who >users
# 不会在终端显示输出结果
# > 将默认的标准输出设备(终端)重定向到指定的文件

# > 会覆盖原内容，追加内容使用 >>
echo "hello" >>users

# 输入重定向
wc -l <users

# 重定向深入理解
# 标准输入文件stdin，描述符为0
# 标准输出文件stdout，描述符为1
# 标准错误文件stderr，描述符为2

# 错误信息重定向文件（日志）
# command 2>file
# command 2>>file
# stdout和stderr合并后重定向文件
# command > file 2>&1
# command >> file 2>&1

# 输入输出同时重定向
# command < infile > outfile

# Here Document是一种特殊重定向
# 输入重定向到交互式shell或程序
wc -l <<EOF
  welcome to
  runoob
EOF

# /dev/null文件(黑洞文件)
# 所有定向到/dev/null文件的内容都会被丢弃
# 屏蔽stdout和stderr的信息
# command > /dev/null 2>&1
