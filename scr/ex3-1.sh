#!/bin/bash

# 인자 값이 없으면 기본값 1 설정
count=${1:-1}

for ((i=0; i<count; i++))
do
  echo "hello world"
done
