.PHONY: square/dialect-ja square/dialect-ja.clean

square/dialect-ja: square/dialect-ja/meta.json square/dialect-ja/square_gominageshita.png square/dialect-ja/square_menkoi.png square/dialect-ja/square_nukui.png square/dialect-ja/square_osasatta.png square/dialect-ja/square_shibareru.png square/dialect-ja/square_syakkoi.png square/dialect-ja/square_wayadawa.png

square/dialect-ja.clean:
	-rm -rf square/dialect-ja/
	-rm square/.dialect-ja.pre

square/.dialect-ja.pre: .square.pre
	-mkdir -p square/dialect-ja && \
	touch square/.dialect-ja.pre

square/dialect-ja/meta.json: square/.dialect-ja.pre ../square/dialect-ja/meta.json
	.script/build_metadata.sh ../square/dialect-ja/meta.json > square/dialect-ja/meta.json

square/dialect-ja/%.png:: ../square/dialect-ja/%.png square/.dialect-ja.pre
	optipng -q --fix "$<" -out "$@"
