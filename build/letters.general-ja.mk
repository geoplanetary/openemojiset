.PHONY: letters/general-ja letters/general-ja.clean

letters/general-ja: \
  letters/general-ja/meta.json \
  letters/general-ja/focused_konnnakotomoaroukato.png \
  letters/general-ja/hellsing_major_krieg_speech.png \
  letters/general-ja/landscape_bonnnoujinohen.png \
  letters/general-ja/landscape_ideograph_goldenweek.gif \
  letters/general-ja/landscape_kanzennnikore.png \
  letters/general-ja/scrolling_shigotogahayasugitemienai.gif

letters/general-ja.clean:
	-rm -rf letters/general-ja/
	-rm letters/.general-ja.pre

letters/.general-ja.pre: .letters.pre
	mkdir -p letters/general-ja
	touch letters/.general-ja.pre

letters/general-ja/meta.json: letters/.general-ja.pre ../letters/general-ja/meta.json
	.script/build_metadata.sh ../letters/general-ja/meta.json > letters/general-ja/meta.json

letters/general-ja/%.png:: ../letters/general-ja/%.svg letters/.general-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

letters/general-ja/%.png:: ../letters/general-ja/%.png letters/.general-ja.pre
	optipng -q --fix "$<" -out "$@"

letters/general-ja/%.gif:: ../letters/general-ja/%.gif letters/.general-ja.pre
	cp "$<" "$@"
