#!/bin/zsh

#utf8 to euc-jp
for file in `ls ./tmp1/*.txt` ; do
    iconv -c -f utf8 $file -t euc-jp -o ./tmp2/$(basename $file)
#    nkf -We $file > ./tmp2/$(basename $file)
done
