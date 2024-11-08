#!/bin/bash

echo "폴더 이름을 입력하세요:"
read folder_name

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "$folder_name 폴더를 생성했습니다."
else
    echo "$folder_name 폴더가 이미 존재합니다."
fi

cd "$folder_name"

for i in {0..4}; do
    touch "file$i.txt"
    mkdir "file$i"
    ln -s "file$i.txt" "file$i/file$i.txt"
done

echo "파일과 하위 폴더를 생성하고 링크를 만들었습니다."
