# mozc to skk

## need
skktools


## use
``` shell
git clone https://github.com/google/mozc.git
cp mozc/src/data/dictionary_oss/dic* ./mozc_dictionary_oss/

make

```


## files

``` shell
./convert1.sh   #convert mozc to skk
./convert2.sh   #encode  utf8 to euc-jp
./convert3.sh   #join and sort

./check-ignore-dic.sh #check look ignore dic
```

