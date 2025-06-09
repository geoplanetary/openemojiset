.PHONY: square/general-ja square/general-ja.clean

square/general-ja: \
  square/general-ja/meta.json \
  square/general-ja/black_squared_inbouron.png \
  square/general-ja/neon_heart_enclosed_suki.gif \
  square/general-ja/orange_squared_ajimishitai.png \
  square/general-ja/scrolling_square_shigotogahayai.gif \
  square/general-ja/square_abarenboushougun.png \
  square/general-ja/square_abarenboutengu.png \
  square/general-ja/square_amaenboushougun.png \
  square/general-ja/square_arienai.png \
  square/general-ja/square_arieru.png \
  square/general-ja/square_aruaru.png \
  square/general-ja/square_baainiyoru.png \
  square/general-ja/square_bonnnoujidaienjou.png \
  square/general-ja/square_bonnnoujinohen.png \
  square/general-ja/square_bouron.png \
  square/general-ja/square_brurettookudake.png \
  square/general-ja/square_chigaukamo.png \
  square/general-ja/square_chottodeiikara.png \
  square/general-ja/square_daijyoubudamondainai.png \
  square/general-ja/square_daitaiatteru.png \
  square/general-ja/square_dokushinkizoku.gif \
  square/general-ja/square_doshigatai.png \
  square/general-ja/square_ecchii.png \
  square/general-ja/square_emojioosugimondai.png \
  square/general-ja/square_eroeronoero.png \
  square/general-ja/square_fuwamoko.png \
  square/general-ja/square_gomottomo.png \
  square/general-ja/square_hanadumariegutarou.png \
  square/general-ja/square_harakudariegutarou.png \
  square/general-ja/square_hayasugitemienai.png \
  square/general-ja/square_honmaya.png \
  square/general-ja/square_honshitujyouhou.png \
  square/general-ja/square_honsore.png \
  square/general-ja/square_hotondomahou.png \
  square/general-ja/square_ideograph_confused_meigen.png \
  square/general-ja/square_ideograph_continuousworker_renkinjutsushi.png \
  square/general-ja/square_ideograph_strange_igyou.png \
  square/general-ja/square_iikanji.png \
  square/general-ja/square_iikoto.png \
  square/general-ja/square_iisensuda.png \
  square/general-ja/square_iizomottoyare.png \
  square/general-ja/square_ikirosonatahautsukushii.png \
  square/general-ja/square_internetroujinkai.png \
  square/general-ja/square_ippannnogokatei_outofgeneral.png \
  square/general-ja/square_ippannnogokatei.png \
  square/general-ja/square_ippantekinihasouiwareteimasu_outofgeneral.png \
  square/general-ja/square_ippantekinihasouiwareteimasu.png \
  square/general-ja/square_jigokuman.png \
  square/general-ja/square_jissaimondai.png \
  square/general-ja/square_kakoku.png \
  square/general-ja/square_kawaisugitemahou.png \
  square/general-ja/square_kingen.png \
  square/general-ja/square_kitai.png \
  square/general-ja/square_kitaku.png \
  square/general-ja/square_konnnatokidouiukaosurebaiikawakaranaino.png \
  square/general-ja/square_koredeiinoka.png \
  square/general-ja/square_korehayokunai.png \
  square/general-ja/square_kougokitai.png \
  square/general-ja/square_kyounochiken.png \
  square/general-ja/square_kyuusai.png \
  square/general-ja/square_makotoniossharutooridesuwa.png \
  square/general-ja/square_mareniyokuaru.png \
  square/general-ja/square_meigen.png \
  square/general-ja/square_mochomocho.png \
  square/general-ja/square_moshikashite.png \
  square/general-ja/square_murikamo.png \
  square/general-ja/square_nahone.png \
  square/general-ja/square_nainai.png \
  square/general-ja/square_naruhodowakaran.png \
  square/general-ja/square_nekodakarawannnyai.png \
  square/general-ja/square_nekodakedowakatta_exclam.png \
  square/general-ja/square_nero.png \
  square/general-ja/square_nerunerunerune.png \
  square/general-ja/square_neyoune.png \
  square/general-ja/square_odaijini.png \
  square/general-ja/square_oishisou.png \
  square/general-ja/square_oishisugitemahou.png \
  square/general-ja/square_okashi.png \
  square/general-ja/square_oshii.png \
  square/general-ja/square_panjan.png \
  square/general-ja/square_roudouwokaishi.png \
  square/general-ja/square_sanzaishita.png \
  square/general-ja/square_seihekinisasaru.png \
  square/general-ja/square_shigomodo.png \
  square/general-ja/square_shinanaiteidoni.png \
  square/general-ja/square_shukkin.png \
  square/general-ja/square_sokoniattemonaidesune.png \
  square/general-ja/square_sokoninakerebanaidesune.png \
  square/general-ja/square_sonnnakotonai.png \
  square/general-ja/square_sonosetsuhaaru.png \
  square/general-ja/square_soredakeha.png \
  square/general-ja/square_soremomatajinsei.gif \
  square/general-ja/square_sorosoro.png \
  square/general-ja/square_soukamo.png \
  square/general-ja/square_sounano.png \
  square/general-ja/square_sounanoka.png \
  square/general-ja/square_soushisousai.png \
  square/general-ja/square_sugoi.png \
  square/general-ja/square_sukikamo.png \
  square/general-ja/square_tanoshimi.gif \
  square/general-ja/square_tawagoto.png \
  square/general-ja/square_tsuyotsuyo.png \
  square/general-ja/square_wakaranai.png \
  square/general-ja/square_wakaru.png \
  square/general-ja/square_zenbunaderu.png \
  square/general-ja/square_zenbunomu.png \
  square/general-ja/square_zenbutaberu.png \
  square/general-ja/swaying_square_nadenadefes.gif \

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

square/general-ja/%.png:: ../square/general-ja/%.svg square/.general-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

square/general-ja/%.png:: ../square/general-ja/%.png square/.general-ja.pre
	optipng -q --fix "$<" -out "$@"
