.PHONY: text/general-ja text/general-ja.clean

text/general-ja: \
  text/general-ja/meta.json \
  text/general-ja/focused_landscape_konnnakotomoaroukato.png \
  text/general-ja/landscape_bonnnoujinohen.png

text/general-ja.clean:
	-rm -rf text/general-ja/
	-rm text/.general-ja.pre

text/.general-ja.pre: .text.pre
	-mkdir -p text/general-ja && \
	touch text/.general-ja.pre

text/general-ja/meta.json: text/.general-ja.pre ../text/general-ja/meta.json
	.script/build_metadata.sh ../text/general-ja/meta.json > text/general-ja/meta.json

text/general-ja/focused_landscape_konnnakotomoaroukato.png: text/.general-ja.pre ../text/general-ja/focused_landscape_konnnakotomoaroukato.png
	cp ../text/general-ja/focused_landscape_konnnakotomoaroukato.png text/general-ja/focused_landscape_konnnakotomoaroukato.png
	optipng -q --fix text/general-ja/focused_landscape_konnnakotomoaroukato.png

text/general-ja/landscape_bonnnoujinohen.png: text/.general-ja.pre ../text/general-ja/landscape_bonnnoujinohen.png
	cp ../text/general-ja/landscape_bonnnoujinohen.png text/general-ja/landscape_bonnnoujinohen.png
	optipng -q --fix text/general-ja/landscape_bonnnoujinohen.png
