#!/bin/bash
step=$1
min=$2
max=$3

isPrime() {
  local NUMBER=$1

  if [ "${NUMBER}" -le 2 ]; then
  	echo 1
  elif [ "${NUMBER}" -ge 3 ]; then
  	if [ "$((${NUMBER} % 2))" -eq 0 ]; then
      echo 0
    else 
    	echo 1
	  fi  
  fi
}




for i in $(seq $min $max); do 

  minPrime=$(isPrime $i)


  if [ "${minPrime}"  == 1 ]; then 
    nextMinPrime=$((${i} + ${step}))
    if [ "$(isPrime $nextMinPrime)" == 1 ]; then
        echo "Yes: $i and $nextMinPrime"
        break
    fi  
  fi
done

