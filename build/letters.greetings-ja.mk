.PHONY: letters/greetings-ja letters/greetings-ja.clean

letters/greetings-ja: \
  letters/greetings-ja/meta.json \
  letters/greetings-ja/square_ohayou.png \
  letters/greetings-ja/square_okaeri.png \
  letters/greetings-ja/square_osashimiyasai.png \
  letters/greetings-ja/square_otsukaresama.png \
  letters/greetings-ja/square_oyasumi.png \
  letters/greetings-ja/square_tadaima.png

letters/greetings-ja.clean:
	-rm -rf letters/greetings-ja/
	-rm letters/.greetings-ja.pre

letters/.greetings-ja.pre: .letters.pre
	mkdir -p letters/greetings-ja
	touch letters/.greetings-ja.pre

letters/greetings-ja/meta.json: letters/.greetings-ja.pre ../letters/greetings-ja/meta.json
	.script/build_metadata.sh ../letters/greetings-ja/meta.json > letters/greetings-ja/meta.json

letters/greetings-ja/%.png:: ../letters/greetings-ja/%.png letters/.greetings-ja.pre
	optipng -q --fix "$<" -out "$@"
