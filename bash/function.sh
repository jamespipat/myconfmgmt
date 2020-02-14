#!/bin/bash

VAR1="GLOBALLY"

func1() {
    VAR2="LOCALLY"
    echo "call inside function $VAR2"
}

echo "$VAR1"
echo "$VAR2"

func1

echo "$VAR1"
echo "$VAR2"
