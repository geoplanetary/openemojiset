.PHONY: handwritten/ddquino handwritten/ddquino.clean

handwritten/ddquino: \
  handwritten/ddquino/meta.json \
  handwritten/ddquino/ddquino_handwritten_hiragana_voiced_n.webp \
  handwritten/ddquino/ddquino_handwritten_landscape_hiragana_a_prolong.webp \
  handwritten/ddquino/ddquino_handwritten_square_ara_heart.webp \
  handwritten/ddquino/ddquino_handwritten_square_araarara.png \
  handwritten/ddquino/ddquino_handwritten_square_eraisugiru.webp \
  handwritten/ddquino/ddquino_handwritten_square_extu.webp \
  handwritten/ddquino/ddquino_handwritten_square_kakkoii.webp \
  handwritten/ddquino/ddquino_handwritten_square_kinisezu.webp \
  handwritten/ddquino/ddquino_handwritten_square_naniwaro.webp \
  handwritten/ddquino/ddquino_handwritten_square_nantekoto.webp \
  handwritten/ddquino/ddquino_handwritten_square_ohayo.webp \
  handwritten/ddquino/ddquino_handwritten_square_oyo_cryingface.webp \
  handwritten/ddquino/ddquino_handwritten_square_suteki.webp \
  handwritten/ddquino/ddquino_handwritten_square_totemorippa.webp \
  handwritten/ddquino/ddquino_handwritten_square_unyaaan.webp \
  handwritten/ddquino/ddquino_handwritten_square_yatta.webp \
  handwritten/ddquino/ddquino_handwritten_square_yoitomoimasu.webp \
  handwritten/ddquino/ddquino_handwritten_square_yoshi.webp \
  handwritten/ddquino/ddquino_handwritten_square_yukkuriaserazu.webp

handwritten/ddquino.clean:
	-rm -rf handwritten/ddquino/
	-rm handwritten/.ddquino.pre

handwritten/.ddquino.pre: .handwritten.pre
	-mkdir -p handwritten/ddquino && \
	touch handwritten/.ddquino.pre

handwritten/ddquino/meta.json: handwritten/.ddquino.pre ../handwritten/ddquino/meta.json
	.script/build_metadata.sh ../handwritten/ddquino/meta.json > handwritten/ddquino/meta.json

handwritten/ddquino/%.png:: ../handwritten/ddquino/%.png handwritten/.ddquino.pre
	optipng -q --fix "$<" -out "$@"

handwritten/ddquino/%.webp:: ../handwritten/ddquino/%.webp handwritten/.ddquino.pre
	cp "$<" "$@"
