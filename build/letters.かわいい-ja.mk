.PHONY: letters/かわいい-ja letters/かわいい-ja.clean

letters/かわいい-ja: \
  letters/かわいい-ja/meta.json \
  letters/かわいい-ja/square_konokokawaii.png \
  letters/かわいい-ja/square_uchinokokawaii.png \
  letters/かわいい-ja/square_yosonokokawaii.png \
  letters/かわいい-ja/square_zenbukawaii.png

letters/かわいい-ja.clean:
	-rm -rf letters/かわいい-ja/
	-rm letters/.かわいい-ja.pre

letters/.かわいい-ja.pre: .letters.pre
	mkdir -p letters/かわいい-ja
	touch letters/.かわいい-ja.pre

letters/かわいい-ja/meta.json: letters/.かわいい-ja.pre ../letters/かわいい-ja/meta.json
	.script/build_metadata.sh ../letters/かわいい-ja/meta.json > letters/かわいい-ja/meta.json

letters/かわいい-ja/%.png:: ../letters/かわいい-ja/%.png letters/.かわいい-ja.pre
	optipng -q --fix "$<" -out "$@"
