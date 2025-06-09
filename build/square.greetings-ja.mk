.PHONY: square/greetings-ja square/greetings-ja.clean

square/greetings-ja: \
  square/greetings-ja/meta.json \
  square/greetings-ja/square_ohayou.png \
  square/greetings-ja/square_okaeri.png \
  square/greetings-ja/square_osashimiyasai.png \
  square/greetings-ja/square_otsukaresama.png \
  square/greetings-ja/square_oyasumi.png \
  square/greetings-ja/square_tadaima.png

square/greetings-ja.clean:
	-rm -rf square/greetings-ja/
	-rm square/.greetings-ja.pre

square/.greetings-ja.pre: .square.pre
	-mkdir -p square/greetings-ja && \
	touch square/.greetings-ja.pre

square/greetings-ja/meta.json: square/.greetings-ja.pre ../square/greetings-ja/meta.json
	.script/build_metadata.sh ../square/greetings-ja/meta.json > square/greetings-ja/meta.json

square/greetings-ja/%.png:: ../square/greetings-ja/%.png square/.greetings-ja.pre
	optipng -q --fix "$<" -out "$@"
