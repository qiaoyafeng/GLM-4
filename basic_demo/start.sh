#!/bin/sh
# 激活虚拟环境
conda activate glm4

nohup python  trans_web_demo.py  1>&2 > chat.log  & 
