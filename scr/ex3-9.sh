#!/bin/bash

echo "검색할 이름을 입력하세요:"
read name

if [ ! -f "DB.txt" ]; then
    echo "DB.txt 파일이 존재하지 않습니다."
    exit 1
fi

echo "검색 결과:"
echo "-------------------------------"

grep "$name" DB.txt

if [ $? -ne 0 ]; then
    echo "해당 이름의 정보를 찾을 수 없습니다."
fi

echo "-------------------------------"
