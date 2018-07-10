# convertdic-mozc-to-skk

convert MOZC OSS dictionary to SKK dictionary.

create file SKK-JISYO.mozc. file size 26M

## need
- [skktools](https://github.com/skk-dev/skktools)
- [MOZC](https://github.com/google/mozc)

set `PATH` skktools.
needs cmd `skkdic-expr` , `skkdic-expr2` , `skkdic-sort`

## use
``` shell
git clone https://github.com/google/mozc.git
cp mozc/src/data/dictionary_oss/dictionary*.txt ./mozc-dictionary-oss/

make
```


## directory

``` shell
Makefile
convert1.sh        #convert mozc to skk
convert2.sh        #encode  utf8 to euc-jp
convert3.sh        #join and sort
check-ignore-dic.sh  #check look ignore dic

tmp1/
tmp2/
mozc-dictionary-oss/

```

