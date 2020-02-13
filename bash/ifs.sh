#!/bin/bash

echo "fill in the name of file to parse: "
read file

echo "fill in the Field Separator: "
read IFS

while read -r var1 var2 var3; do
    echo "var1= $var1"
    echo "var2= $var2"
    echo "var3= $var3"
done <$file

    