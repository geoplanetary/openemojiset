.PHONY: letters/祭り-ja letters/祭り-ja.clean

letters/祭り-ja: \
  letters/祭り-ja/meta.json \
  letters/祭り-ja/square_arigatofes.png \
  letters/祭り-ja/square_bikkurifes.png \
  letters/祭り-ja/square_dosukebefes.png \
  letters/祭り-ja/square_kawaiifes.png \
  letters/祭り-ja/square_naruhodofes.png \
  letters/祭り-ja/square_tasukarufes.png \
  letters/祭り-ja/square_tasuketefes.png

letters/祭り-ja.clean:
	-rm -rf letters/祭り-ja/
	-rm letters/.祭り-ja.pre

letters/.祭り-ja.pre: .letters.pre
	-mkdir -p letters/祭り-ja && \
	touch letters/.祭り-ja.pre

letters/祭り-ja/meta.json: letters/.祭り-ja.pre ../letters/祭り-ja/meta.json
	.script/build_metadata.sh ../letters/祭り-ja/meta.json > letters/祭り-ja/meta.json

letters/祭り-ja/%.png:: ../letters/祭り-ja/%.png letters/.祭り-ja.pre
	optipng -q --fix "$<" -out "$@"
