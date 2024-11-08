#!/bin/bash

echo "프로그램을 시작합니다."
echo "함수 이름을 입력하세요."

read func_name

if [ "$func_name" == "ls" ]; then
    echo "리눅스 명령어: ls"
    ls
elif [ "$func_name" == "ls -l" ]; then
    echo "리눅스 명령어: ls -l"
    ls -l
else
    echo "지원하지 않는 명령어입니다."
fi
