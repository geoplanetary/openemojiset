.PHONY: text/subtitle-ja text/subtitle-ja.clean

text/subtitle-ja: \
  text/subtitle-ja/meta.json \
  text/subtitle-ja/topgear_caraccident_subtitle.png

text/subtitle-ja.clean:
	-rm -rf text/subtitle-ja/
	-rm text/.subtitle-ja.pre

text/.subtitle-ja.pre: .text.pre
	-mkdir -p text/subtitle-ja && \
	touch text/.subtitle-ja.pre

text/subtitle-ja/meta.json: text/.subtitle-ja.pre ../text/subtitle-ja/meta.json
	.script/build_metadata.sh ../text/subtitle-ja/meta.json > text/subtitle-ja/meta.json

text/subtitle-ja/%.png:: ../text/subtitle-ja/%.png text/.subtitle-ja.pre
	optipng -q --fix "$<" -out "$@"
