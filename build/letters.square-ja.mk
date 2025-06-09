.PHONY: letters/square-ja letters/square-ja.clean

letters/square-ja: \
  letters/square-ja/meta.json \
  letters/square-ja/black_squared_inbouron.png \
  letters/square-ja/neon_heart_enclosed_suki.gif \
  letters/square-ja/orange_squared_ajimishitai.png \
  letters/square-ja/scrolling_square_shigotogahayai.gif \
  letters/square-ja/square_abarenboushougun.png \
  letters/square-ja/square_abarenboutengu.png \
  letters/square-ja/square_amaenboushougun.png \
  letters/square-ja/square_arienai.png \
  letters/square-ja/square_arieru.png \
  letters/square-ja/square_aruaru.png \
  letters/square-ja/square_baainiyoru.png \
  letters/square-ja/square_bonnnoujidaienjou.png \
  letters/square-ja/square_bonnnoujinohen.png \
  letters/square-ja/square_bouron.png \
  letters/square-ja/square_brurettookudake.png \
  letters/square-ja/square_chigaukamo.png \
  letters/square-ja/square_chottodeiikara.png \
  letters/square-ja/square_daijyoubudamondainai.png \
  letters/square-ja/square_daitaiatteru.png \
  letters/square-ja/square_dokushinkizoku.gif \
  letters/square-ja/square_doshigatai.png \
  letters/square-ja/square_ecchii.png \
  letters/square-ja/square_emojioosugimondai.png \
  letters/square-ja/square_eroeronoero.png \
  letters/square-ja/square_fuwamoko.png \
  letters/square-ja/square_gomottomo.png \
  letters/square-ja/square_hanadumariegutarou.png \
  letters/square-ja/square_harakudariegutarou.png \
  letters/square-ja/square_hayasugitemienai.png \
  letters/square-ja/square_honmaya.png \
  letters/square-ja/square_honshitujyouhou.png \
  letters/square-ja/square_honsore.png \
  letters/square-ja/square_hotondomahou.png \
  letters/square-ja/square_ideograph_confused_meigen.png \
  letters/square-ja/square_ideograph_continuousworker_renkinjutsushi.png \
  letters/square-ja/square_ideograph_strange_igyou.png \
  letters/square-ja/square_iikanji.png \
  letters/square-ja/square_iikoto.png \
  letters/square-ja/square_iisensuda.png \
  letters/square-ja/square_iizomottoyare.png \
  letters/square-ja/square_ikirosonatahautsukushii.png \
  letters/square-ja/square_internetroujinkai.png \
  letters/square-ja/square_ippannnogokatei_outofgeneral.png \
  letters/square-ja/square_ippannnogokatei.png \
  letters/square-ja/square_ippantekinihasouiwareteimasu_outofgeneral.png \
  letters/square-ja/square_ippantekinihasouiwareteimasu.png \
  letters/square-ja/square_jigokuman.png \
  letters/square-ja/square_jissaimondai.png \
  letters/square-ja/square_kakoku.png \
  letters/square-ja/square_kawaisugitemahou.png \
  letters/square-ja/square_kingen.png \
  letters/square-ja/square_kitai.png \
  letters/square-ja/square_kitaku.png \
  letters/square-ja/square_konnnatokidouiukaosurebaiikawakaranaino.png \
  letters/square-ja/square_koredeiinoka.png \
  letters/square-ja/square_korehayokunai.png \
  letters/square-ja/square_kougokitai.png \
  letters/square-ja/square_kyounochiken.png \
  letters/square-ja/square_kyuusai.png \
  letters/square-ja/square_makotoniossharutooridesuwa.png \
  letters/square-ja/square_mareniyokuaru.png \
  letters/square-ja/square_meigen.png \
  letters/square-ja/square_mochomocho.png \
  letters/square-ja/square_moshikashite.png \
  letters/square-ja/square_murikamo.png \
  letters/square-ja/square_nahone.png \
  letters/square-ja/square_nainai.png \
  letters/square-ja/square_naruhodowakaran.png \
  letters/square-ja/square_nekodakarawannnyai.png \
  letters/square-ja/square_nekodakedowakatta_exclam.png \
  letters/square-ja/square_nero.png \
  letters/square-ja/square_nerunerunerune.png \
  letters/square-ja/square_neyoune.png \
  letters/square-ja/square_odaijini.png \
  letters/square-ja/square_oishisou.png \
  letters/square-ja/square_oishisugitemahou.png \
  letters/square-ja/square_okashi.png \
  letters/square-ja/square_oshii.png \
  letters/square-ja/square_panjan.png \
  letters/square-ja/square_roudouwokaishi.png \
  letters/square-ja/square_sanzaishita.png \
  letters/square-ja/square_seihekinisasaru.png \
  letters/square-ja/square_shigomodo.png \
  letters/square-ja/square_shinanaiteidoni.png \
  letters/square-ja/square_shukkin.png \
  letters/square-ja/square_sokoniattemonaidesune.png \
  letters/square-ja/square_sokoninakerebanaidesune.png \
  letters/square-ja/square_sonnnakotonai.png \
  letters/square-ja/square_sonosetsuhaaru.png \
  letters/square-ja/square_soredakeha.png \
  letters/square-ja/square_soremomatajinsei.gif \
  letters/square-ja/square_sorosoro.png \
  letters/square-ja/square_soukamo.png \
  letters/square-ja/square_sounano.png \
  letters/square-ja/square_sounanoka.png \
  letters/square-ja/square_soushisousai.png \
  letters/square-ja/square_sugoi.png \
  letters/square-ja/square_sukikamo.png \
  letters/square-ja/square_tanoshimi.gif \
  letters/square-ja/square_tawagoto.png \
  letters/square-ja/square_tsuyotsuyo.png \
  letters/square-ja/square_wakaranai.png \
  letters/square-ja/square_wakaru.png \
  letters/square-ja/square_zenbunaderu.png \
  letters/square-ja/square_zenbunomu.png \
  letters/square-ja/square_zenbutaberu.png \
  letters/square-ja/swaying_square_nadenadefes.gif \

letters/square-ja.clean:
	-rm -rf letters/square-ja/
	-rm letters/.square-ja.pre

letters/.square-ja.pre: .letters.pre
	mkdir -p letters/square-ja
	touch letters/.square-ja.pre

letters/square-ja/meta.json: letters/.square-ja.pre ../letters/square-ja/meta.json
	.script/build_metadata.sh ../letters/square-ja/meta.json > letters/square-ja/meta.json

letters/square-ja/%.gif:: ../letters/square-ja/%.gif letters/.square-ja.pre
	cp "$<" "$@"

letters/square-ja/%.png:: ../letters/square-ja/%.svg letters/.square-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

letters/square-ja/%.png:: ../letters/square-ja/%.png letters/.square-ja.pre
	optipng -q --fix "$<" -out "$@"
