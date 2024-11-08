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
done

tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt
echo "파일을 압축했습니다: files.tar"
