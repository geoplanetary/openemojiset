.PHONY: letters/dialect-ja letters/dialect-ja.clean

letters/dialect-ja: \
  letters/dialect-ja/meta.json \
  letters/dialect-ja/square_gominageshita.png \
  letters/dialect-ja/square_menkoi.png \
  letters/dialect-ja/square_nukui.png \
  letters/dialect-ja/square_osasatta.png \
  letters/dialect-ja/square_shibareru.png \
  letters/dialect-ja/square_syakkoi.png \
  letters/dialect-ja/square_wayadawa.png

letters/dialect-ja.clean:
	-rm -rf letters/dialect-ja/
	-rm letters/.dialect-ja.pre

letters/.dialect-ja.pre: .letters.pre
	mkdir -p letters/dialect-ja
	touch letters/.dialect-ja.pre

letters/dialect-ja/meta.json: letters/.dialect-ja.pre ../letters/dialect-ja/meta.json
	.script/build_metadata.sh ../letters/dialect-ja/meta.json > letters/dialect-ja/meta.json

letters/dialect-ja/%.png:: ../letters/dialect-ja/%.png letters/.dialect-ja.pre
	optipng -q --fix "$<" -out "$@"
