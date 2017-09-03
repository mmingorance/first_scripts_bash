#!/usr/bin/env bash
firstNumber=$1
secondNumber=$2
thirdNumber=$3


for i in $(seq 0 $thirdNumber); do
    if [ "$((${i} % ${firstNumber}))" -eq 0 ] && [ "$((${i} % ${secondNumber}))" -eq 0 ]; then
    echo ${i}
    fi
done

