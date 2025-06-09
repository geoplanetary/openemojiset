.PHONY: text/general-ja text/general-ja.clean

text/general-ja: \
  text/general-ja/meta.json \
  text/general-ja/focused_landscape_konnnakotomoaroukato.png \
  text/general-ja/hellsing_major_krieg_speech.png \
  text/general-ja/landscape_bonnnoujinohen.png \
  text/general-ja/landscape_ideograph_goldenweek.gif \
  text/general-ja/landscape_kanzennnikore.png \
  text/general-ja/scrolling_shigotogahayasugitemienai.gif

text/general-ja.clean:
	-rm -rf text/general-ja/
	-rm text/.general-ja.pre

text/.general-ja.pre: .text.pre
	-mkdir -p text/general-ja && \
	touch text/.general-ja.pre

text/general-ja/meta.json: text/.general-ja.pre ../text/general-ja/meta.json
	.script/build_metadata.sh ../text/general-ja/meta.json > text/general-ja/meta.json

text/general-ja/%.png:: ../text/general-ja/%.svg text/.general-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

text/general-ja/%.png:: ../text/general-ja/%.png text/.general-ja.pre
	optipng -q --fix "$<" -out "$@"

text/general-ja/%.gif:: ../text/general-ja/%.gif text/.general-ja.pre
	cp "$<" "$@"
