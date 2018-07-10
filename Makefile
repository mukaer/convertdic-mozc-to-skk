
.PHONY: all


all: convert encode join

convert:
	./convert1.sh

encode:
	./convert2.sh

join:
	./convert3.sh

clean:
	rm -f tmp1/*.txt
	rm -f tmp2/*.txt
	rm -f tmp3/*.txt
	rm -f SKK-JISYO.mozc
