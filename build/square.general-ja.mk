.PHONY: square/general-ja square/general-ja.clean

square/general-ja: square/general-ja/meta.json square/general-ja/square_daitaiatteru.png square/general-ja/square_nekodakarawannnyai.png square/general-ja/square_nekodakedowakatta_exclam.png square/general-ja/square_sanzaishita.png square/general-ja/square_zenbunaderu.png square/general-ja/square_zenbunomu.png square/general-ja/square_zenbutaberu.png

square/general-ja.clean:
	-rm -rf square/general-ja/
	-rm square/.general-ja.pre

square/.general-ja.pre: .square.pre
	-mkdir -p square/general-ja && \
	touch square/.general-ja.pre

square/general-ja/meta.json: square/.general-ja.pre ../square/general-ja/meta.json
	.script/build_metadata.sh ../square/general-ja/meta.json > square/general-ja/meta.json

square/general-ja/square_daitaiatteru.png: square/.general-ja.pre ../square/general-ja/square_daitaiatteru.png
	cp ../square/general-ja/square_daitaiatteru.png square/general-ja/square_daitaiatteru.png
	optipng -q --fix square/general-ja/square_daitaiatteru.png

square/general-ja/square_nekodakarawannnyai.png: square/.general-ja.pre ../square/general-ja/square_nekodakarawannnyai.png
	cp ../square/general-ja/square_nekodakarawannnyai.png square/general-ja/square_nekodakarawannnyai.png
	optipng -q --fix square/general-ja/square_nekodakarawannnyai.png

square/general-ja/square_nekodakedowakatta_exclam.png: square/.general-ja.pre ../square/general-ja/square_nekodakedowakatta_exclam.png
	cp ../square/general-ja/square_nekodakedowakatta_exclam.png square/general-ja/square_nekodakedowakatta_exclam.png
	optipng -q --fix square/general-ja/square_nekodakedowakatta_exclam.png

square/general-ja/square_sanzaishita.png: square/.general-ja.pre ../square/general-ja/square_sanzaishita.png
	cp ../square/general-ja/square_sanzaishita.png square/general-ja/square_sanzaishita.png
	optipng -q --fix square/general-ja/square_sanzaishita.png

square/general-ja/square_zenbunaderu.png: square/.general-ja.pre ../square/general-ja/square_zenbunaderu.png
	cp ../square/general-ja/square_zenbunaderu.png square/general-ja/square_zenbunaderu.png
	optipng -q --fix square/general-ja/square_zenbunaderu.png

square/general-ja/square_zenbunomu.png: square/.general-ja.pre ../square/general-ja/square_zenbunomu.png
	cp ../square/general-ja/square_zenbunomu.png square/general-ja/square_zenbunomu.png
	optipng -q --fix square/general-ja/square_zenbunomu.png

square/general-ja/square_zenbutaberu.png: square/.general-ja.pre ../square/general-ja/square_zenbutaberu.png
	cp ../square/general-ja/square_zenbutaberu.png square/general-ja/square_zenbutaberu.png
	optipng -q --fix square/general-ja/square_zenbutaberu.png
