#!/usr/bin/env bash

# make grammer
for filename in `ls tmp2/*.txt` ; do
    if [ -n "${GRAMMER}"   ]; then
        GRAMMER=($GRAMMER + $filename)
    else
        GRAMMER=($filename)
    fi

done

# debug
#echo  $GRAMMER

echo ";; -*- mode: fundamental; coding: euc-jp -*-" >  SKK-JISYO.mozc
skkdic-expr2 $GRAMMER >> SKK-JISYO.mozc


# memo
#
# use skkdic-expr
#skkdic-expr $GRAMMER | skkdic-sort > SKK-JISYO.mozc
