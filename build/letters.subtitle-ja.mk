.PHONY: letters/subtitle-ja letters/subtitle-ja.clean

letters/subtitle-ja: \
  letters/subtitle-ja/meta.json \
  letters/subtitle-ja/topgear_caraccident_subtitle.png

letters/subtitle-ja.clean:
	-rm -rf letters/subtitle-ja/
	-rm letters/.subtitle-ja.pre

letters/.subtitle-ja.pre: .letters.pre
	mkdir -p letters/subtitle-ja
	touch letters/.subtitle-ja.pre

letters/subtitle-ja/meta.json: letters/.subtitle-ja.pre ../letters/subtitle-ja/meta.json
	.script/build_metadata.sh ../letters/subtitle-ja/meta.json > letters/subtitle-ja/meta.json

letters/subtitle-ja/%.png:: ../letters/subtitle-ja/%.png letters/.subtitle-ja.pre
	optipng -q --fix "$<" -out "$@"
