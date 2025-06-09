.PHONY: letters/cthulhu-ja letters/cthulhu-ja.clean

letters/cthulhu-ja: \
  letters/cthulhu-ja/meta.json \
  letters/cthulhu-ja/square_iaia.png \
  letters/cthulhu-ja/square_kutoxurufufutagun.png

letters/cthulhu-ja.clean:
	-rm -rf letters/cthulhu-ja/
	-rm letters/.cthulhu-ja.pre

letters/.cthulhu-ja.pre: .letters.pre
	mkdir -p letters/cthulhu-ja
	touch letters/.cthulhu-ja.pre

letters/cthulhu-ja/meta.json: letters/.cthulhu-ja.pre ../letters/cthulhu-ja/meta.json
	.script/build_metadata.sh ../letters/cthulhu-ja/meta.json > letters/cthulhu-ja/meta.json

letters/cthulhu-ja/%.png:: ../letters/cthulhu-ja/%.png letters/.cthulhu-ja.pre
	optipng -q --fix "$<" -out "$@"
