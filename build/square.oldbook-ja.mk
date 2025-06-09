.PHONY: square/oldbook-ja square/oldbook-ja.clean

square/oldbook-ja: \
  square/oldbook-ja/meta.json \
  square/oldbook-ja/square_ashi.png \
  square/oldbook-ja/square_haruhaagemono.png \
  square/oldbook-ja/square_haruhaagepoyo.png \
  square/oldbook-ja/square_haruhaakebono.png \
  square/oldbook-ja/square_ito.png \
  square/oldbook-ja/square_waroshi.png \
  square/oldbook-ja/square_wokashi.png \
  square/oldbook-ja/square_yoshi.png

square/oldbook-ja.clean:
	-rm -rf square/oldbook-ja/
	-rm square/.oldbook-ja.pre

square/.oldbook-ja.pre: .square.pre
	-mkdir -p square/oldbook-ja && \
	touch square/.oldbook-ja.pre

square/oldbook-ja/meta.json: square/.oldbook-ja.pre ../square/oldbook-ja/meta.json
	.script/build_metadata.sh ../square/oldbook-ja/meta.json > square/oldbook-ja/meta.json

square/oldbook-ja/%.png:: ../square/oldbook-ja/%.png square/.oldbook-ja.pre
	optipng -q --fix "$<" -out "$@"
