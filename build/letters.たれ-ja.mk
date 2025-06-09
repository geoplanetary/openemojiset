.PHONY: letters/たれ-ja letters/たれ-ja.clean

letters/たれ-ja: \
  letters/たれ-ja/meta.json \
  letters/たれ-ja/square_amadare.png \
  letters/たれ-ja/square_ittare.png \
  letters/たれ-ja/square_kuttare.png \
  letters/たれ-ja/square_madare.png \
  letters/たれ-ja/square_nondare.png \
  letters/たれ-ja/square_sudare.png \
  letters/たれ-ja/square_yakinikunotare.png \
  letters/たれ-ja/square_yamaidare.png \
  letters/たれ-ja/square_yattare.png

letters/たれ-ja.clean:
	-rm -rf letters/たれ-ja/
	-rm letters/.たれ-ja.pre

letters/.たれ-ja.pre: .letters.pre
	mkdir -p letters/たれ-ja
	touch letters/.たれ-ja.pre

letters/たれ-ja/meta.json: letters/.たれ-ja.pre ../letters/たれ-ja/meta.json
	.script/build_metadata.sh ../letters/たれ-ja/meta.json > letters/たれ-ja/meta.json

letters/たれ-ja/%.png:: ../letters/たれ-ja/%.png letters/.たれ-ja.pre
	optipng -q --fix "$<" -out "$@"
