#!/bin/bash

echo "이름과 정보를 입력하세요 (형식: 이름 전화번호):"
read input

if [ ! -f "DB.txt" ]; then
    echo "--my friends--" > DB.txt
fi

echo "$input" >> DB.txt
echo "정보가 DB.txt에 추가되었습니다."
