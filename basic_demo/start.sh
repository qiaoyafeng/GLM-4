#!/bin/sh
# 激活虚拟环境
conda activate glm4


pid=$(ps aux | grep trans_web_demo.py  | grep -v grep | awk '{print $2}')
echo "pid:$pid"

if [ -n "$pid" ];then
          echo "kill pid:$pid"
            kill -9  $pid
fi
( nohup python  trans_web_demo.py  1>&2 > chat.log  & )






