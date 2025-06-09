.PHONY: square/たれ-ja square/たれ-ja.clean

square/たれ-ja: \
  square/たれ-ja/meta.json \
  square/たれ-ja/square_amadare.png \
  square/たれ-ja/square_ittare.png \
  square/たれ-ja/square_kuttare.png \
  square/たれ-ja/square_madare.png \
  square/たれ-ja/square_nondare.png \
  square/たれ-ja/square_sudare.png \
  square/たれ-ja/square_yakinikunotare.png \
  square/たれ-ja/square_yamaidare.png \
  square/たれ-ja/square_yattare.png

square/たれ-ja.clean:
	-rm -rf square/たれ-ja/
	-rm square/.たれ-ja.pre

square/.たれ-ja.pre: .square.pre
	-mkdir -p square/たれ-ja && \
	touch square/.たれ-ja.pre

square/たれ-ja/meta.json: square/.たれ-ja.pre ../square/たれ-ja/meta.json
	.script/build_metadata.sh ../square/たれ-ja/meta.json > square/たれ-ja/meta.json

square/たれ-ja/%.png:: ../square/たれ-ja/%.png square/.たれ-ja.pre
	optipng -q --fix "$<" -out "$@"
