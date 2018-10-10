#!/usr/bin/env bash

echo $1
cat $1  | aspell list
if [[ $(cat $1  | aspell list) ]]; then
    exit 1
else
    exit 0
fi