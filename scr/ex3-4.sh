#!/bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
    yes)
        echo "좋아요! 계속 즐기세요!"
        ;;
    no)
        echo "아쉬워요. 더 재미있게 만들어 볼까요?"
        ;;
    *)
        echo "yes 또는 no로 입력해 주세요."
        ;;
esac
