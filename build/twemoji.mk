.PHONY: twemoji twemoji.clean

twemoji: twemoji/meta.json twemoji/squared_16.png twemoji/squared_32.png twemoji/squared_32.png twemoji/squared_64.png twemoji/squared_128.png twemoji/squared_256.png twemoji/squared_334.png twemoji/squared_512.png twemoji/squared_575.png twemoji/squared_1024.png twemoji/squared_2048.png twemoji/squared_4096.png twemoji/squared_8192.png twemoji/squared_16384.png twemoji/squared_32768.png twemoji/squared_65536.png

twemoji.clean:
	-rm -rf twemoji/
	-rm .twemoji.pre

.twemoji.pre:
	-mkdir -p twemoji && \
	touch .twemoji.pre

twemoji/meta.json: .twemoji.pre ../twemoji/meta.json
	jq -c '.' ../twemoji/meta.json > twemoji/meta.json

twemoji/squared_16.png: .twemoji.pre ../twemoji/squared_16.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_16.svg twemoji/squared_16.png && optipng -q twemoji/squared_16.png

twemoji/squared_32.png: .twemoji.pre ../twemoji/squared_32.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_32.svg twemoji/squared_32.png && optipng -q twemoji/squared_32.png

twemoji/squared_64.png: .twemoji.pre ../twemoji/squared_64.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_64.svg twemoji/squared_64.png && optipng -q twemoji/squared_64.png

twemoji/squared_128.png: .twemoji.pre ../twemoji/squared_128.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_128.svg twemoji/squared_128.png && optipng -q twemoji/squared_128.png

twemoji/squared_256.png: .twemoji.pre ../twemoji/squared_256.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_256.svg twemoji/squared_256.png && optipng -q twemoji/squared_256.png

twemoji/squared_334.png: .twemoji.pre ../twemoji/squared_334.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_334.svg twemoji/squared_334.png && optipng -q twemoji/squared_334.png

twemoji/squared_512.png: .twemoji.pre ../twemoji/squared_512.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_512.svg twemoji/squared_512.png && optipng -q twemoji/squared_512.png

twemoji/squared_575.png: .twemoji.pre ../twemoji/squared_575.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_575.svg twemoji/squared_575.png && optipng -q twemoji/squared_575.png

twemoji/squared_1024.png: .twemoji.pre ../twemoji/squared_1024.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_1024.svg twemoji/squared_1024.png && optipng -q twemoji/squared_1024.png

twemoji/squared_2048.png: .twemoji.pre ../twemoji/squared_2048.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_2048.svg twemoji/squared_2048.png && optipng -q twemoji/squared_2048.png

twemoji/squared_4096.png: .twemoji.pre ../twemoji/squared_4096.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_4096.svg twemoji/squared_4096.png && optipng -q twemoji/squared_4096.png

twemoji/squared_8192.png: .twemoji.pre ../twemoji/squared_8192.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_8192.svg twemoji/squared_8192.png && optipng -q twemoji/squared_8192.png

twemoji/squared_16384.png: .twemoji.pre ../twemoji/squared_16384.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_16384.svg twemoji/squared_16384.png && optipng -q twemoji/squared_16384.png

twemoji/squared_32768.png: .twemoji.pre ../twemoji/squared_32768.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_32768.svg twemoji/squared_32768.png && optipng -q twemoji/squared_32768.png

twemoji/squared_65536.png: .twemoji.pre ../twemoji/squared_65536.svg
	resvg -z 4.0 --dpi 384 ../twemoji/squared_65536.svg twemoji/squared_65536.png && optipng -q twemoji/squared_65536.png