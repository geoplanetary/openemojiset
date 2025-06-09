.PHONY: square/祭り-ja square/祭り-ja.clean

square/祭り-ja: \
  square/祭り-ja/meta.json \
  square/祭り-ja/square_arigatofes.png \
  square/祭り-ja/square_bikkurifes.png \
  square/祭り-ja/square_dosukebefes.png \
  square/祭り-ja/square_kawaiifes.png \
  square/祭り-ja/square_naruhodofes.png \
  square/祭り-ja/square_tasukarufes.png \
  square/祭り-ja/square_tasuketefes.png

square/祭り-ja.clean:
	-rm -rf square/祭り-ja/
	-rm square/.祭り-ja.pre

square/.祭り-ja.pre: .square.pre
	-mkdir -p square/祭り-ja && \
	touch square/.祭り-ja.pre

square/祭り-ja/meta.json: square/.祭り-ja.pre ../square/祭り-ja/meta.json
	.script/build_metadata.sh ../square/祭り-ja/meta.json > square/祭り-ja/meta.json

square/祭り-ja/%.png:: ../square/祭り-ja/%.png square/.祭り-ja.pre
	optipng -q --fix "$<" -out "$@"
