#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "사용법: $0 체중(kg) 신장(cm)"
    exit 1
fi

weight=$1
height=$2
height_m=$(awk "BEGIN {print $height / 100}")
bmi=$(awk "BEGIN {print $weight / ($height_m * $height_m)}")

if (( $(echo "$bmi < 18.5" | awk '{print ($1 < 18.5)}') )); then
    echo "저체중입니다."
elif (( $(echo "$bmi < 23" | awk '{print ($1 < 23)}') )); then
    echo "정상 체중입니다."
else
    echo "과체중입니다."
fi
