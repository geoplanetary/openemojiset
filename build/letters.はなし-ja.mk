.PHONY: letters/はなし-ja letters/はなし-ja.clean

letters/はなし-ja: \
  letters/はなし-ja/meta.json \
  letters/はなし-ja/exploding_square_imanohanashi.gif \
  letters/はなし-ja/flashing_square_daijinahanashi.gif \
  letters/はなし-ja/flashing_square_iihanashi.gif \
  letters/はなし-ja/flashing_square_mondaihanashi.gif \
  letters/はなし-ja/flashing_square_oishiihanashi.gif \
  letters/はなし-ja/flashing_square_sosuunahanashi.gif \
  letters/はなし-ja/flashing_square_sutekinahanashi.gif \
  letters/はなし-ja/focused_trembling_square_sugoihanashi.gif \
  letters/はなし-ja/square_akuihanashi.gif \
  letters/はなし-ja/square_kanashiihanashi.gif \
  letters/はなし-ja/square_kowaihanashi.gif \
  letters/はなし-ja/square_sakkinohanashi.gif \
  letters/はなし-ja/square_waruihanashi.gif \
  letters/はなし-ja/swelling_square_ureshiihanashi.gif \
  letters/はなし-ja/trembling_square_hidoihanashi.gif

letters/はなし-ja.clean:
	-rm -rf letters/はなし-ja/
	-rm letters/.はなし-ja.pre

letters/.はなし-ja.pre: .letters.pre
	mkdir -p letters/はなし-ja
	touch letters/.はなし-ja.pre

letters/はなし-ja/meta.json: letters/.はなし-ja.pre ../letters/はなし-ja/meta.json
	.script/build_metadata.sh ../letters/はなし-ja/meta.json > letters/はなし-ja/meta.json

letters/はなし-ja/%.gif:: ../letters/はなし-ja/%.gif letters/.はなし-ja.pre
	cp "$<" "$@"
