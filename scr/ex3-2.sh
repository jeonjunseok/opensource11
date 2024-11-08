#!/bin/bash

# 입력값 확인
if [ "$#" -ne 3 ]; then
    echo "사용법: $0 숫자1 연산자 숫자2"
    exit 1
fi

num1=$1
operator=$2
num2=$3

# 계산
if [ "$operator" == "+" ]; then
    echo $((num1 + num2))
elif [ "$operator" == "-" ]; then
    echo $((num1 - num2))
else
    echo "지원하지 않는 연산자입니다. + 또는 -만 사용하세요."
fi
