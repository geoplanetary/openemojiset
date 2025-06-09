.PHONY: square/general-ja square/general-ja.clean

square/general-ja: \
  square/general-ja/meta.json \
  square/general-ja/neon_heart_enclosed_suki.gif \
  square/general-ja/orange_squared_ajimishitai.png \
  square/general-ja/square_abarenboushougun.png \
  square/general-ja/square_abarenboutengu.png \
  square/general-ja/square_amaenboushougun.png \
  square/general-ja/square_bonnnoujidaienjou.png \
  square/general-ja/square_bonnnoujinohen.png \
  square/general-ja/square_daitaiatteru.png \
  square/general-ja/square_dokushinkizoku.gif \
  square/general-ja/square_fuwamoko.png \
  square/general-ja/square_hanadumariegutarou.png \
  square/general-ja/square_harakudariegutarou.png \
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

square/general-ja/%.gif:: ../square/general-ja/%.gif square/.general-ja.pre
	cp "$<" "$@"

square/general-ja/%.png:: ../square/general-ja/%.png square/.general-ja.pre
	optipng -q --fix "$<" -out "$@"
