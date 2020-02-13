#!/bin/bash

my_var=("one" "two" "three" "four" "five")
count=0

for index in ${my_var[@]}; do
    echo "$index"
    echo "${#my_var[@]}"
    echo "${!my_var[@]}"
    echo "${my_var[*]}"
    echo "${my_var[@]}"
done

