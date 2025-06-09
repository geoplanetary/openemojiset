.PHONY: letters/oldbook-ja letters/oldbook-ja.clean

letters/oldbook-ja: \
  letters/oldbook-ja/meta.json \
  letters/oldbook-ja/square_ashi.png \
  letters/oldbook-ja/square_haruhaagemono.png \
  letters/oldbook-ja/square_haruhaagepoyo.png \
  letters/oldbook-ja/square_haruhaakebono.png \
  letters/oldbook-ja/square_ito.png \
  letters/oldbook-ja/square_waroshi.png \
  letters/oldbook-ja/square_wokashi.png \
  letters/oldbook-ja/square_yoshi.png

letters/oldbook-ja.clean:
	-rm -rf letters/oldbook-ja/
	-rm letters/.oldbook-ja.pre

letters/.oldbook-ja.pre: .letters.pre
	mkdir -p letters/oldbook-ja
	touch letters/.oldbook-ja.pre

letters/oldbook-ja/meta.json: letters/.oldbook-ja.pre ../letters/oldbook-ja/meta.json
	.script/build_metadata.sh ../letters/oldbook-ja/meta.json > letters/oldbook-ja/meta.json

letters/oldbook-ja/%.png:: ../letters/oldbook-ja/%.png letters/.oldbook-ja.pre
	optipng -q --fix "$<" -out "$@"
