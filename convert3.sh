#!/bin/zsh

# make grammer
for filename in `ls tmp2/*.txt` ; do
    if [ -n "${GRAMMER}"   ]; then
        GRAMMER=($GRAMMER + $filename)
    else
        GRAMMER=($filename)
    fi

done

echo  $GRAMMER

# memo
# seg error skkdic-expr2 . too many many candidates?
#skkdic-expr2 $GRAMMER > SKK-JISYO.mozc

# use skkdic-expr
skkdic-expr $GRAMMER | skkdic-sort > SKK-JISYO.mozc
