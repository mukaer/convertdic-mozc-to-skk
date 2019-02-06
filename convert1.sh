#!/usr/bin/env bash

#convert
for file in `ls ./mozc-dictionary-oss/*.txt` ; do
  ./convert-dic-mozc-to-skk.sh  $file > ./tmp1/$(basename $file)
done
