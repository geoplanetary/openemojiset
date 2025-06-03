.PHONY: square/general-ja square/general-ja.clean

square/general-ja: \
  square/general-ja/meta.json \
  square/general-ja/neon_heart_enclosed_suki.gif \
  square/general-ja/orange_squared_ajimishitai.png \
  square/general-ja/square_daitaiatteru.png \
  square/general-ja/square_dokushinkizoku.gif \
  square/general-ja/square_fuwamoko.png \
  square/general-ja/square_hotondomahou.png \
  square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png \
  square/general-ja/square_kawaisugitemahou.png \
  square/general-ja/square_kyuusai.png \
  square/general-ja/square_meigen.png \
  square/general-ja/square_nekodakarawannnyai.png \
  square/general-ja/square_nekodakedowakatta_exclam.png \
  square/general-ja/square_oishisugitemahou.png \
  square/general-ja/square_sanzaishita.png \
  square/general-ja/square_soushisousai.png \
  square/general-ja/square_zenbunaderu.png \
  square/general-ja/square_zenbunomu.png \
  square/general-ja/square_zenbutaberu.png \
  square/general-ja/swaying_square_nadenadefes.gif

square/general-ja.clean:
	-rm -rf square/general-ja/
	-rm square/.general-ja.pre

square/.general-ja.pre: .square.pre
	-mkdir -p square/general-ja && \
	touch square/.general-ja.pre

square/general-ja/meta.json: square/.general-ja.pre ../square/general-ja/meta.json
	.script/build_metadata.sh ../square/general-ja/meta.json > square/general-ja/meta.json

square/general-ja/neon_heart_enclosed_suki.gif: square/.general-ja.pre ../square/general-ja/neon_heart_enclosed_suki.gif
	cp ../square/general-ja/neon_heart_enclosed_suki.gif square/general-ja/neon_heart_enclosed_suki.gif

square/general-ja/orange_squared_ajimishitai.png: square/.general-ja.pre ../square/general-ja/orange_squared_ajimishitai.png
	cp ../square/general-ja/orange_squared_ajimishitai.png square/general-ja/orange_squared_ajimishitai.png
	optipng -q --fix square/general-ja/orange_squared_ajimishitai.png

square/general-ja/square_daitaiatteru.png: square/.general-ja.pre ../square/general-ja/square_daitaiatteru.png
	cp ../square/general-ja/square_daitaiatteru.png square/general-ja/square_daitaiatteru.png
	optipng -q --fix square/general-ja/square_daitaiatteru.png

square/general-ja/square_dokushinkizoku.gif: square/.general-ja.pre ../square/general-ja/square_dokushinkizoku.gif
	cp ../square/general-ja/square_dokushinkizoku.gif square/general-ja/square_dokushinkizoku.gif

square/general-ja/square_fuwamoko.png: square/.general-ja.pre ../square/general-ja/square_fuwamoko.png
	cp ../square/general-ja/square_fuwamoko.png square/general-ja/square_fuwamoko.png
	optipng -q --fix square/general-ja/square_fuwamoko.png

square/general-ja/square_hotondomahou.png: square/.general-ja.pre ../square/general-ja/square_hotondomahou.png
	cp ../square/general-ja/square_hotondomahou.png square/general-ja/square_hotondomahou.png
	optipng -q --fix square/general-ja/square_hotondomahou.png

square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png: square/.general-ja.pre ../square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png
	cp ../square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png
	optipng -q --fix square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png

square/general-ja/square_kawaisugitemahou.png: square/.general-ja.pre ../square/general-ja/square_kawaisugitemahou.png
	cp ../square/general-ja/square_kawaisugitemahou.png square/general-ja/square_kawaisugitemahou.png
	optipng -q --fix square/general-ja/square_kawaisugitemahou.png

square/general-ja/square_kyuusai.png: square/.general-ja.pre ../square/general-ja/square_kyuusai.png
	cp ../square/general-ja/square_kyuusai.png square/general-ja/square_kyuusai.png
	optipng -q --fix square/general-ja/square_kyuusai.png

square/general-ja/square_meigen.png: square/.general-ja.pre ../square/general-ja/square_meigen.png
	cp ../square/general-ja/square_meigen.png square/general-ja/square_meigen.png
	optipng -q --fix square/general-ja/square_meigen.png

square/general-ja/square_nekodakarawannnyai.png: square/.general-ja.pre ../square/general-ja/square_nekodakarawannnyai.png
	cp ../square/general-ja/square_nekodakarawannnyai.png square/general-ja/square_nekodakarawannnyai.png
	optipng -q --fix square/general-ja/square_nekodakarawannnyai.png

square/general-ja/square_nekodakedowakatta_exclam.png: square/.general-ja.pre ../square/general-ja/square_nekodakedowakatta_exclam.png
	cp ../square/general-ja/square_nekodakedowakatta_exclam.png square/general-ja/square_nekodakedowakatta_exclam.png
	optipng -q --fix square/general-ja/square_nekodakedowakatta_exclam.png

square/general-ja/square_oishisugitemahou.png: square/.general-ja.pre ../square/general-ja/square_oishisugitemahou.png
	cp ../square/general-ja/square_oishisugitemahou.png square/general-ja/square_oishisugitemahou.png
	optipng -q --fix square/general-ja/square_oishisugitemahou.png

square/general-ja/square_sanzaishita.png: square/.general-ja.pre ../square/general-ja/square_sanzaishita.png
	cp ../square/general-ja/square_sanzaishita.png square/general-ja/square_sanzaishita.png
	optipng -q --fix square/general-ja/square_sanzaishita.png

square/general-ja/square_soushisousai.png: square/.general-ja.pre ../square/general-ja/square_soushisousai.png
	cp ../square/general-ja/square_soushisousai.png square/general-ja/square_soushisousai.png
	optipng -q --fix square/general-ja/square_soushisousai.png

square/general-ja/square_zenbunaderu.png: square/.general-ja.pre ../square/general-ja/square_zenbunaderu.png
	cp ../square/general-ja/square_zenbunaderu.png square/general-ja/square_zenbunaderu.png
	optipng -q --fix square/general-ja/square_zenbunaderu.png

square/general-ja/square_zenbunomu.png: square/.general-ja.pre ../square/general-ja/square_zenbunomu.png
	cp ../square/general-ja/square_zenbunomu.png square/general-ja/square_zenbunomu.png
	optipng -q --fix square/general-ja/square_zenbunomu.png

square/general-ja/square_zenbutaberu.png: square/.general-ja.pre ../square/general-ja/square_zenbutaberu.png
	cp ../square/general-ja/square_zenbutaberu.png square/general-ja/square_zenbutaberu.png
	optipng -q --fix square/general-ja/square_zenbutaberu.png

square/general-ja/swaying_square_nadenadefes.gif: square/.general-ja.pre ../square/general-ja/swaying_square_nadenadefes.gif
	cp ../square/general-ja/swaying_square_nadenadefes.gif square/general-ja/swaying_square_nadenadefes.gif
