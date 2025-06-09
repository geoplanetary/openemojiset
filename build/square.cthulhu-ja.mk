.PHONY: square/cthulhu-ja square/cthulhu-ja.clean

square/cthulhu-ja: \
  square/cthulhu-ja/meta.json \
  square/cthulhu-ja/square_iaia.png \
  square/cthulhu-ja/square_kutoxurufufutagun.png

square/cthulhu-ja.clean:
	-rm -rf square/cthulhu-ja/
	-rm square/.cthulhu-ja.pre

square/.cthulhu-ja.pre: .square.pre
	-mkdir -p square/cthulhu-ja && \
	touch square/.cthulhu-ja.pre

square/cthulhu-ja/meta.json: square/.cthulhu-ja.pre ../square/cthulhu-ja/meta.json
	.script/build_metadata.sh ../square/cthulhu-ja/meta.json > square/cthulhu-ja/meta.json

square/cthulhu-ja/%.png:: ../square/cthulhu-ja/%.png square/.cthulhu-ja.pre
	optipng -q --fix "$<" -out "$@"
