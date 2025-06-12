# Letters

letters: letters.zip

letters.clean: letters/cthulhu-ja.clean letters/dialect-ja.clean letters/general-ja.clean letters/greetings-ja.clean letters/oldbook-ja.clean letters/square-ja.clean letters/subtitle-ja.clean letters/かわいい-ja.clean letters/たれ-ja.clean letters/はなし-ja.clean letters/偉業-ja.clean letters/祭り-ja.clean
	-rm letters.zip
	-rm -rf letters/
	-rm .letters.assets
	-rm -rf letters.assets/
	-rm .letters.meta
	-rm -rf letters.meta/
	-rm .letters.pre .letters.assets.pre .letters.meta.pre

.letters.pre:
	mkdir -p letters
	touch .letters.pre

.letters.assets.pre: .letters.pre
	mkdir -p letters.assets
	touch .letters.assets.pre

.letters.meta.pre: .letters.pre
	mkdir -p letters.meta
	touch .letters.meta.pre

# cthulhu-ja ------------------------- #
letters/cthulhu-ja: letters/cthulhu-ja.meta letters/cthulhu-ja.assets

letters/cthulhu-ja.clean:
	-rm -rf letters.assets/cthulhu-ja/
	-rm letters.assets/cthulhu-ja.pre

letters.assets/cthulhu-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/cthulhu-ja
	touch letters.assets/cthulhu-ja.pre

letters/cthulhu-ja.meta= letters.meta/cthulhu-ja.json

letters/cthulhu-ja.meta: $(letters/cthulhu-ja.meta)

letters/cthulhu-ja.assets= \
  letters.assets/cthulhu-ja/square_iaia.png \
  letters.assets/cthulhu-ja/square_kutoxurufufutagun.png

letters/cthulhu-ja.assets: $(letters/cthulhu-ja.assets)

letters.assets/cthulhu-ja/%.png:: ../letters/cthulhu-ja/%.png letters.assets/cthulhu-ja.pre
	optipng -q --fix "$<" -out "$@"


# dialect-ja ------------------------- #
letters/dialect-ja: letters/dialect-ja.meta letters/dialect-ja.assets

letters/dialect-ja.clean:
	-rm -rf letters.assets/dialect-ja/
	-rm letters.assets/dialect-ja.pre

letters.assets/dialect-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/dialect-ja
	touch letters.assets/dialect-ja.pre

letters/dialect-ja.meta= letters.meta/dialect-ja.json

letters/dialect-ja.meta: $(letters/dialect-ja.meta)

letters/dialect-ja.assets= \
  letters.assets/dialect-ja/square_gominageshita.png \
  letters.assets/dialect-ja/square_menkoi.png \
  letters.assets/dialect-ja/square_nukui.png \
  letters.assets/dialect-ja/square_osasatta.png \
  letters.assets/dialect-ja/square_shibareru.png \
  letters.assets/dialect-ja/square_syakkoi.png \
  letters.assets/dialect-ja/square_wayadawa.png

letters/dialect-ja.assets: $(letters/dialect-ja.assets)

letters.assets/dialect-ja/%.png:: ../letters/dialect-ja/%.png letters.assets/dialect-ja.pre
	optipng -q --fix "$<" -out "$@"


# general-ja ------------------------- #
letters/general-ja: letters/general-ja.meta letters/general-ja.assets

letters/general-ja.clean:
	-rm -rf letters.assets/general-ja/
	-rm letters.assets/general-ja.pre

letters.assets/general-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/general-ja
	touch letters.assets/general-ja.pre

letters/general-ja.meta= letters.meta/general-ja.json

letters/general-ja.meta: $(letters/general-ja.meta)

letters/general-ja.assets= \
  letters.assets/general-ja/focused_konnnakotomoaroukato.png \
  letters.assets/general-ja/hellsing_major_krieg_speech.png \
  letters.assets/general-ja/landscape_axya.png \
  letters.assets/general-ja/landscape_bonnnoujinohen.png \
  letters.assets/general-ja/landscape_henyohenyo.png \
  letters.assets/general-ja/landscape_honya.png \
  letters.assets/general-ja/landscape_ideograph_goldenweek.gif \
  letters.assets/general-ja/landscape_ishokudougen.png \
  letters.assets/general-ja/landscape_kanzennnikore.png \
  letters.assets/general-ja/landscape_madanekojanai.png \
  letters.assets/general-ja/landscape_madanenyai.png \
  letters.assets/general-ja/landscape_nekodakarashikatanyai.png \
  letters.assets/general-ja/landscape_nekodakarawakannnyai.png \
  letters.assets/general-ja/landscape_nekodakedowakaritai.png \
  letters.assets/general-ja/landscape_nekodakedowakatta.png \
  letters.assets/general-ja/landscape_nekokamoshirenyai.png \
  letters.assets/general-ja/landscape_nuxe.png \
  letters.assets/general-ja/landscape_okirarenyai.png \
  letters.assets/general-ja/landscape_payoxyon.png \
  letters.assets/general-ja/landscape_pesho.png \
  letters.assets/general-ja/landscape_ponyashuchi.png \
  letters.assets/general-ja/landscape_sakyubasu.png \
  letters.assets/general-ja/landscape_yokidane.png \
  letters.assets/general-ja/scrolling_shigotogahayasugitemienai.gif

letters.assets/general-ja/%.png:: ../letters/general-ja/%.svg letters.assets/general-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

letters.assets/general-ja/%.png:: ../letters/general-ja/%.png letters.assets/general-ja.pre
	optipng -q --fix "$<" -out "$@"

letters.assets/general-ja/%.gif:: ../letters/general-ja/%.gif letters.assets/general-ja.pre
	cp "$<" "$@"


# greetings-ja ----------------------- #
letters/greetings-ja: letters/greetings-ja.meta letters/greetings-ja.assets

letters/greetings-ja.clean:
	-rm -rf letters.assets/greetings-ja/
	-rm letters.assets/greetings-ja.pre

letters.assets/greetings-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/greetings-ja
	touch letters.assets/greetings-ja.pre

letters/greetings-ja.meta= letters.meta/greetings-ja.json

letters/greetings-ja.meta: $(letters/greetings-ja.meta)

letters/greetings-ja.assets= \
  letters.assets/greetings-ja/square_ohayou.png \
  letters.assets/greetings-ja/square_okaeri.png \
  letters.assets/greetings-ja/square_osashimiyasai.png \
  letters.assets/greetings-ja/square_otsukaresama.png \
  letters.assets/greetings-ja/square_oyasumi.png \
  letters.assets/greetings-ja/square_tadaima.png

letters/greetings-ja.assets: $(letters/greetings-ja.assets)

letters.assets/greetings-ja/%.png:: ../letters/greetings-ja/%.png letters.assets/greetings-ja.pre
	optipng -q --fix "$<" -out "$@"


# oldbook-ja ------------------------- #
letters/oldbook-ja: letters/oldbook-ja.meta letters/oldbook-ja.assets

letters/oldbook-ja.clean:
	-rm -rf letters.assets/oldbook-ja/
	-rm letters.assets/oldbook-ja.pre

letters.assets/oldbook-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/oldbook-ja
	touch letters.assets/oldbook-ja.pre

letters/oldbook-ja.meta= letters.meta/oldbook-ja.json

letters/oldbook-ja.meta: $(letters/oldbook-ja.meta)

letters/oldbook-ja.assets= \
  letters.assets/oldbook-ja/square_ashi.png \
  letters.assets/oldbook-ja/square_haruhaagemono.png \
  letters.assets/oldbook-ja/square_haruhaagepoyo.png \
  letters.assets/oldbook-ja/square_haruhaakebono.png \
  letters.assets/oldbook-ja/square_ito.png \
  letters.assets/oldbook-ja/square_waroshi.png \
  letters.assets/oldbook-ja/square_wokashi.png \
  letters.assets/oldbook-ja/square_yoshi.png

letters/oldbook-ja.assets: $(letters/oldbook-ja.assets)

letters.assets/oldbook-ja/%.png:: ../letters/oldbook-ja/%.png letters.assets/oldbook-ja.pre
	optipng -q --fix "$<" -out "$@"


# square-ja -------------------------- #
letters/square-ja: letters/square-ja.meta letters/square-ja.assets

letters/square-ja.clean:
	-rm -rf letters.assets/square-ja/
	-rm letters.assets/square-ja.pre

letters.assets/square-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/square-ja
	touch letters.assets/square-ja.pre

letters/square-ja.meta= letters.meta/square-ja.json

letters/square-ja.meta: $(letters/square-ja.meta)

letters/square-ja.assets= \
  letters.assets/square-ja/black_squared_inbouron.png \
  letters.assets/square-ja/neon_heart_enclosed_suki.gif \
  letters.assets/square-ja/orange_squared_ajimishitai.png \
  letters.assets/square-ja/scrolling_square_shigotogahayai.gif \
  letters.assets/square-ja/square_abarenboushougun.png \
  letters.assets/square-ja/square_abarenboutengu.png \
  letters.assets/square-ja/square_amaenboushougun.png \
  letters.assets/square-ja/square_arienai.png \
  letters.assets/square-ja/square_arieru.png \
  letters.assets/square-ja/square_aruaru.png \
  letters.assets/square-ja/square_baainiyoru.png \
  letters.assets/square-ja/square_bonnnoujidaienjou.png \
  letters.assets/square-ja/square_bonnnoujinohen.png \
  letters.assets/square-ja/square_bouron.png \
  letters.assets/square-ja/square_brurettookudake.png \
  letters.assets/square-ja/square_chigaukamo.png \
  letters.assets/square-ja/square_chottodeiikara.png \
  letters.assets/square-ja/square_daijyoubudamondainai.png \
  letters.assets/square-ja/square_daitaiatteru.png \
  letters.assets/square-ja/square_dokushinkizoku.gif \
  letters.assets/square-ja/square_doshigatai.png \
  letters.assets/square-ja/square_ecchii.png \
  letters.assets/square-ja/square_emojioosugimondai.png \
  letters.assets/square-ja/square_eroeronoero.png \
  letters.assets/square-ja/square_fuwamoko.png \
  letters.assets/square-ja/square_gomottomo.png \
  letters.assets/square-ja/square_hanadumariegutarou.png \
  letters.assets/square-ja/square_harakudariegutarou.png \
  letters.assets/square-ja/square_hayasugitemienai.png \
  letters.assets/square-ja/square_honmaya.png \
  letters.assets/square-ja/square_honshitujyouhou.png \
  letters.assets/square-ja/square_honsore.png \
  letters.assets/square-ja/square_hotondomahou.png \
  letters.assets/square-ja/square_ideograph_confused_meigen.png \
  letters.assets/square-ja/square_ideograph_continuousworker_renkinjutsushi.png \
  letters.assets/square-ja/square_ideograph_strange_igyou.png \
  letters.assets/square-ja/square_iikanji.png \
  letters.assets/square-ja/square_iikoto.png \
  letters.assets/square-ja/square_iisensuda.png \
  letters.assets/square-ja/square_iizomottoyare.png \
  letters.assets/square-ja/square_ikirosonatahautsukushii.png \
  letters.assets/square-ja/square_internetroujinkai.png \
  letters.assets/square-ja/square_ippannnogokatei_outofgeneral.png \
  letters.assets/square-ja/square_ippannnogokatei.png \
  letters.assets/square-ja/square_ippantekinihasouiwareteimasu_outofgeneral.png \
  letters.assets/square-ja/square_ippantekinihasouiwareteimasu.png \
  letters.assets/square-ja/square_jigokuman.png \
  letters.assets/square-ja/square_jissaimondai.png \
  letters.assets/square-ja/square_kakoku.png \
  letters.assets/square-ja/square_kawaisugitemahou.png \
  letters.assets/square-ja/square_kingen.png \
  letters.assets/square-ja/square_kitai.png \
  letters.assets/square-ja/square_kitaku.png \
  letters.assets/square-ja/square_konnnatokidouiukaosurebaiikawakaranaino.png \
  letters.assets/square-ja/square_koredeiinoka.png \
  letters.assets/square-ja/square_korehayokunai.png \
  letters.assets/square-ja/square_kougokitai.png \
  letters.assets/square-ja/square_kyounochiken.png \
  letters.assets/square-ja/square_kyuusai.png \
  letters.assets/square-ja/square_makotoniossharutooridesuwa.png \
  letters.assets/square-ja/square_mareniyokuaru.png \
  letters.assets/square-ja/square_meigen.png \
  letters.assets/square-ja/square_mochomocho.png \
  letters.assets/square-ja/square_moshikashite.png \
  letters.assets/square-ja/square_murikamo.png \
  letters.assets/square-ja/square_nahone.png \
  letters.assets/square-ja/square_nainai.png \
  letters.assets/square-ja/square_naruhodowakaran.png \
  letters.assets/square-ja/square_nekodakarawannnyai.png \
  letters.assets/square-ja/square_nekodakedowakatta_exclam.png \
  letters.assets/square-ja/square_nero.png \
  letters.assets/square-ja/square_nerunerunerune.png \
  letters.assets/square-ja/square_neyoune.png \
  letters.assets/square-ja/square_odaijini.png \
  letters.assets/square-ja/square_oishisou.png \
  letters.assets/square-ja/square_oishisugitemahou.png \
  letters.assets/square-ja/square_okashi.png \
  letters.assets/square-ja/square_oshii.png \
  letters.assets/square-ja/square_panjan.png \
  letters.assets/square-ja/square_roudouwokaishi.png \
  letters.assets/square-ja/square_sanzaishita.png \
  letters.assets/square-ja/square_seihekinisasaru.png \
  letters.assets/square-ja/square_shigomodo.png \
  letters.assets/square-ja/square_shinanaiteidoni.png \
  letters.assets/square-ja/square_shukkin.png \
  letters.assets/square-ja/square_sokoniattemonaidesune.png \
  letters.assets/square-ja/square_sokoninakerebanaidesune.png \
  letters.assets/square-ja/square_sonnnakotonai.png \
  letters.assets/square-ja/square_sonosetsuhaaru.png \
  letters.assets/square-ja/square_soredakeha.png \
  letters.assets/square-ja/square_soremomatajinsei.gif \
  letters.assets/square-ja/square_sorosoro.png \
  letters.assets/square-ja/square_soukamo.png \
  letters.assets/square-ja/square_sounano.png \
  letters.assets/square-ja/square_sounanoka.png \
  letters.assets/square-ja/square_soushisousai.png \
  letters.assets/square-ja/square_sugoi.png \
  letters.assets/square-ja/square_sukikamo.png \
  letters.assets/square-ja/square_tanoshimi.gif \
  letters.assets/square-ja/square_tawagoto.png \
  letters.assets/square-ja/square_tsuyotsuyo.png \
  letters.assets/square-ja/square_wakaranai.png \
  letters.assets/square-ja/square_wakaru.png \
  letters.assets/square-ja/square_zenbunaderu.png \
  letters.assets/square-ja/square_zenbunomu.png \
  letters.assets/square-ja/square_zenbutaberu.png \
  letters.assets/square-ja/swaying_square_nadenadefes.gif \

letters/square-ja.assets: $(letters/square-ja.assets)

letters.assets/square-ja/%.gif:: ../letters/square-ja/%.gif letters.assets/square-ja.pre
	cp "$<" "$@"

letters.assets/square-ja/%.png:: ../letters/square-ja/%.svg letters.assets/square-ja.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

letters.assets/square-ja/%.png:: ../letters/square-ja/%.png letters.assets/square-ja.pre
	optipng -q --fix "$<" -out "$@"


# subtitle-ja ------------------------ #
letters/subtitle-ja: letters/subtitle-ja.meta letters/subtitle-ja.assets

letters/subtitle-ja.clean:
	-rm -rf letters.assets/subtitle-ja/
	-rm letters.assets/subtitle-ja.pre

letters.assets/subtitle-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/subtitle-ja
	touch letters.assets/subtitle-ja.pre

letters/subtitle-ja.meta= letters.meta/subtitle-ja.json

letters/subtitle-ja.meta: $(letters/subtitle-ja.meta)

letters/subtitle-ja.assets= \
  letters.assets/subtitle-ja/topgear_caraccident_subtitle.png

letters/subtitle-ja.assets: $(letters/subtitle-ja.assets)

letters.assets/subtitle-ja/%.png:: ../letters/subtitle-ja/%.png letters.assets/subtitle-ja.pre
	optipng -q --fix "$<" -out "$@"


# かわいい-ja ------------------------ #
letters/かわいい-ja: letters/かわいい-ja.meta letters/かわいい-ja.assets

letters/かわいい-ja.clean:
	-rm -rf letters.assets/かわいい-ja/
	-rm letters.assets/かわいい-ja.pre

letters.assets/かわいい-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/かわいい-ja
	touch letters.assets/かわいい-ja.pre

letters/かわいい-ja.meta= letters.meta/かわいい-ja.json

letters/かわいい-ja.meta: $(letters/かわいい-ja.meta)

letters/かわいい-ja.assets= \
  letters.assets/かわいい-ja/landscape_konokokawaii.png \
  letters.assets/かわいい-ja/landscape_uchinokokawaii.png \
  letters.assets/かわいい-ja/landscape_yosonokokawaii.png \
  letters.assets/かわいい-ja/landscape_zenbukawaii.png \
  letters.assets/かわいい-ja/square_konokokawaii.png \
  letters.assets/かわいい-ja/square_uchinokokawaii.png \
  letters.assets/かわいい-ja/square_yosonokokawaii.png \
  letters.assets/かわいい-ja/square_zenbukawaii.png

letters/かわいい-ja.assets: $(letters/かわいい-ja.assets)

letters.assets/かわいい-ja/%.png:: ../letters/かわいい-ja/%.png letters.assets/かわいい-ja.pre
	optipng -q --fix "$<" -out "$@"


# たれ-ja ---------------------------- #
letters/たれ-ja: letters/たれ-ja.meta letters/たれ-ja.assets

letters/たれ-ja.clean:
	-rm -rf letters.assets/たれ-ja/
	-rm letters.assets/たれ-ja.pre

letters.assets/たれ-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/たれ-ja
	touch letters.assets/たれ-ja.pre

letters/たれ-ja.meta= letters.meta/たれ-ja.json

letters/たれ-ja.meta: $(letters/たれ-ja.meta)

letters/たれ-ja.assets= \
  letters.assets/たれ-ja/square_amadare.png \
  letters.assets/たれ-ja/square_ittare.png \
  letters.assets/たれ-ja/square_kuttare.png \
  letters.assets/たれ-ja/square_madare.png \
  letters.assets/たれ-ja/square_nondare.png \
  letters.assets/たれ-ja/square_sudare.png \
  letters.assets/たれ-ja/square_yakinikunotare.png \
  letters.assets/たれ-ja/square_yamaidare.png \
  letters.assets/たれ-ja/square_yattare.png

letters/たれ-ja.assets: $(letters/たれ-ja.assets)

letters.assets/たれ-ja/%.png:: ../letters/たれ-ja/%.png letters.assets/たれ-ja.pre
	optipng -q --fix "$<" -out "$@"


# はなし-ja -------------------------- #
letters/はなし-ja: letters/はなし-ja.meta letters/はなし-ja.assets

letters/はなし-ja.clean:
	-rm -rf letters.assets/はなし-ja/
	-rm letters.assets/はなし-ja.pre

letters.assets/はなし-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/はなし-ja
	touch letters.assets/はなし-ja.pre

letters/はなし-ja.meta= letters.meta/はなし-ja.json

letters/はなし-ja.meta: $(letters/はなし-ja.meta)

letters/はなし-ja.assets= \
  letters.assets/はなし-ja/exploding_square_imanohanashi.gif \
  letters.assets/はなし-ja/flashing_square_daijinahanashi.gif \
  letters.assets/はなし-ja/flashing_square_iihanashi.gif \
  letters.assets/はなし-ja/flashing_square_mondaihanashi.gif \
  letters.assets/はなし-ja/flashing_square_oishiihanashi.gif \
  letters.assets/はなし-ja/flashing_square_sosuunahanashi.gif \
  letters.assets/はなし-ja/flashing_square_sutekinahanashi.gif \
  letters.assets/はなし-ja/focused_trembling_square_sugoihanashi.gif \
  letters.assets/はなし-ja/square_akuihanashi.gif \
  letters.assets/はなし-ja/square_kanashiihanashi.gif \
  letters.assets/はなし-ja/square_kowaihanashi.gif \
  letters.assets/はなし-ja/square_sakkinohanashi.gif \
  letters.assets/はなし-ja/square_waruihanashi.gif \
  letters.assets/はなし-ja/swelling_square_ureshiihanashi.gif \
  letters.assets/はなし-ja/trembling_square_hidoihanashi.gif

letters/はなし-ja.assets: $(letters/はなし-ja.assets)

letters.assets/はなし-ja/%.gif:: ../letters/はなし-ja/%.gif letters.assets/はなし-ja.pre
	cp "$<" "$@"


# 偉業-ja ---------------------------- #
letters/偉業-ja: letters/偉業-ja.meta letters/偉業-ja.assets

letters/偉業-ja.clean:
	-rm -rf letters.assets/偉業-ja/
	-rm letters.assets/偉業-ja.pre

letters.assets/偉業-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/偉業-ja
	touch letters.assets/偉業-ja.pre

letters/偉業-ja.meta= letters.meta/偉業-ja.json

letters/偉業-ja.meta: $(letters/偉業-ja.meta)

letters/偉業-ja.assets= \
  letters.assets/偉業-ja/landscape_sanzaihaigyou.png

letters/偉業-ja.assets: $(letters/偉業-ja.assets)

letters.assets/偉業-ja/%.png:: ../letters/偉業-ja/%.png letters.assets/偉業-ja.pre
	optipng -q --fix "$<" -out "$@"


# 祭り-ja ---------------------------- #
letters/祭り-ja: letters/祭り-ja.meta letters/祭り-ja.assets

letters/祭り-ja.clean:
	-rm -rf letters.assets/祭り-ja/
	-rm letters.assets/祭り-ja.pre

letters.assets/祭り-ja.pre: .letters.assets.pre
	mkdir -p letters.assets/祭り-ja
	touch letters.assets/祭り-ja.pre

letters/祭り-ja.meta= letters.meta/祭り-ja.json

letters/祭り-ja.meta: $(letters/祭り-ja.meta)

letters/祭り-ja.assets= \
  letters.assets/祭り-ja/square_arigatofes.png \
  letters.assets/祭り-ja/square_bikkurifes.png \
  letters.assets/祭り-ja/square_dosukebefes.png \
  letters.assets/祭り-ja/square_kawaiifes.png \
  letters.assets/祭り-ja/square_naruhodofes.png \
  letters.assets/祭り-ja/square_tasukarufes.png \
  letters.assets/祭り-ja/square_tasuketefes.png

letters/祭り-ja.assets: $(letters/祭り-ja.assets)

letters.assets/祭り-ja/%.png:: ../letters/祭り-ja/%.png letters.assets/祭り-ja.pre
	optipng -q --fix "$<" -out "$@"


# ------------------------------------ #

letters.meta= \
  $(letters/cthulhu-ja.meta) \
  $(letters/dialect-ja.meta) \
  $(letters/general-ja.meta) \
  $(letters/greetings-ja.meta) \
  $(letters/oldbook-ja.meta) \
  $(letters/square-ja.meta) \
  $(letters/subtitle-ja.meta) \
  $(letters/かわいい-ja.meta) \
  $(letters/たれ-ja.meta) \
  $(letters/はなし-ja.meta) \
  $(letters/偉業-ja.meta) \
  $(letters/祭り-ja.meta)

letters.meta: $(letters.meta)

.letters.meta: $(letters.meta)
	.script/merge_metadata.sh $(letters.meta) > letters/meta.json
	touch .letters.meta

letters.assets= \
  $(letters/cthulhu-ja.assets) \
  $(letters/dialect-ja.assets) \
  $(letters/general-ja.assets) \
  $(letters/greetings-ja.assets) \
  $(letters/oldbook-ja.assets) \
  $(letters/square-ja.assets) \
  $(letters/subtitle-ja.assets) \
  $(letters/かわいい-ja.assets) \
  $(letters/たれ-ja.assets) \
  $(letters/はなし-ja.assets) \
  $(letters/偉業-ja.assets) \
  $(letters/祭り-ja.assets)

letters.assets: $(letters.assets)

.letters.assets: $(letters.assets)
	cp -t letters/ $(letters.assets)
	touch .letters.assets

letters.check: .letters.meta .letters.assets
	.script/check_metadata_integrity.sh letters

letters.zip: .letters.meta .letters.assets
	cd letters && zip ../letters.zip meta.json ./*.png ./*/gif

letters.meta/%.json: ../letters/%/meta.json .letters.meta.pre
	.script/build_metadata.sh "$<" > "$@"

# ------------------------------------ #

.PHONY: \
  letters letters.clean letters.meta letters.assets letters.check \
  letters/cthulhu-ja letters/cthulhu-ja.clean letters/cthulhu-ja.meta letters/cthulhu-ja.assets \
  letters/dialect-ja letters/dialect-ja.clean letters/dialect-ja.meta letters/dialect-ja.assets \
  letters/general-ja letters/general-ja.clean letters/general-ja.meta letters/general-ja.assets \
  letters/greetings-ja letters/greetings-ja.clean letters/greetings-ja.meta letters/greetings-ja.assets \
  letters/oldbook-ja letters/oldbook-ja.clean letters/oldbook-ja.meta letters/oldbook-ja.assets \
  letters/square-ja letters/square-ja.clean letters/square-ja.meta letters/square-ja.assets \
  letters/subtitle-ja letters/subtitle-ja.clean letters/subtitle-ja.meta letters/subtitle-ja.assets \
  letters/かわいい-ja letters/かわいい-ja.clean letters/かわいい-ja.meta letters/かわいい-ja.assets \
  letters/たれ-ja letters/たれ-ja.clean letters/たれ-ja.meta letters/たれ-ja.assets \
  letters/はなし-ja letters/はなし-ja.clean letters/はなし-ja.meta letters/はなし-ja.assets \
  letters/偉業-ja letters/偉業-ja.clean letters/偉業-ja.meta letters/偉業-ja.assets \
  letters/祭り-ja letters/祭り-ja.clean letters/祭り-ja.meta letters/祭り-ja.assets
