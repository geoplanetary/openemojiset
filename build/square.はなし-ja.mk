.PHONY: square/はなし-ja square/はなし-ja.clean

square/はなし-ja: \
  square/はなし-ja/meta.json \
  square/はなし-ja/exploding_square_imanohanashi.gif \
  square/はなし-ja/flashing_square_daijinahanashi.gif \
  square/はなし-ja/flashing_square_iihanashi.gif \
  square/はなし-ja/flashing_square_mondaihanashi.gif \
  square/はなし-ja/flashing_square_oishiihanashi.gif \
  square/はなし-ja/flashing_square_sosuunahanashi.gif \
  square/はなし-ja/flashing_square_sutekinahanashi.gif \
  square/はなし-ja/focused_trembling_square_sugoihanashi.gif \
  square/はなし-ja/square_akuihanashi.gif \
  square/はなし-ja/square_kanashiihanashi.gif \
  square/はなし-ja/square_kowaihanashi.gif \
  square/はなし-ja/square_sakkinohanashi.gif \
  square/はなし-ja/square_waruihanashi.gif \
  square/はなし-ja/swelling_square_ureshiihanashi.gif \
  square/はなし-ja/trembling_square_hidoihanashi.gif \

square/はなし-ja.clean:
	-rm -rf square/はなし-ja/
	-rm square/.はなし-ja.pre

square/.はなし-ja.pre: .square.pre
	-mkdir -p square/はなし-ja && \
	touch square/.はなし-ja.pre

square/はなし-ja/meta.json: square/.はなし-ja.pre ../square/はなし-ja/meta.json
	.script/build_metadata.sh ../square/はなし-ja/meta.json > square/はなし-ja/meta.json

square/はなし-ja/%.gif:: ../square/はなし-ja/%.gif square/.はなし-ja.pre
	cp "$<" "$@"
