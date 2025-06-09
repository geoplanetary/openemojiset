.PHONY: square/かわいい-ja square/かわいい-ja.clean

square/かわいい-ja: square/かわいい-ja/meta.json square/かわいい-ja/square_konokokawaii.png square/かわいい-ja/square_uchinokokawaii.png square/かわいい-ja/square_yosonokokawaii.png square/かわいい-ja/square_zenbukawaii.png

square/かわいい-ja.clean:
	-rm -rf square/かわいい-ja/
	-rm square/.かわいい-ja.pre

square/.かわいい-ja.pre: .square.pre
	-mkdir -p square/かわいい-ja && \
	touch square/.かわいい-ja.pre

square/かわいい-ja/meta.json: square/.かわいい-ja.pre ../square/かわいい-ja/meta.json
	.script/build_metadata.sh ../square/かわいい-ja/meta.json > square/かわいい-ja/meta.json

square/かわいい-ja/%.png:: ../square/かわいい-ja/%.png square/.かわいい-ja.pre
	optipng -q --fix "$<" -out "$@"
