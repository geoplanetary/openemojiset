# Handwritten

handwritten: handwritten/ddquino

.handwritten.pre:
	mkdir -p handwritten
	touch .handwritten.pre

handwritten.clean: handwritten/ddquino.clean
	-rm -rf handwritten/
	-rm .handwritten.pre

# ddquino ---------------------------- #
handwritten/ddquino: handwritten.ddquino.zip

handwritten/.ddquino.pre: .handwritten.pre
	mkdir -p handwritten/ddquino
	touch handwritten/.ddquino.pre

handwritten/ddquino.clean:
	-rm -rf handwritten/ddquino/
	-rm handwritten.ddquino.zip
	-rm handwritten/.ddquino.pre

handwritten/ddquino.meta= handwritten/ddquino/meta.json

handwritten/ddquino.meta: $(handwritten/ddquino.meta)

handwritten/ddquino.assets= \
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

handwritten/ddquino.assets: $(handwritten/ddquino.assets)

handwritten/ddquino.check: $(handwritten/ddquino.meta) $(handwritten/ddquino.assets)
	.script/check_metadata_integrity.sh handwritten/ddquino

handwritten.ddquino.zip: $(handwritten/ddquino.meta) $(handwritten/ddquino.assets)
	cd handwritten/ddquino && zip ../../handwritten.ddquino.zip meta.json ./*.webp

handwritten/ddquino/%.png:: ../handwritten/ddquino/%.png handwritten/.ddquino.pre
	optipng -q --fix "$<" -out "$@"

handwritten/ddquino/%.webp:: ../handwritten/ddquino/%.webp handwritten/.ddquino.pre
	cp "$<" "$@"


# ------------------------------------ #

handwritten.meta= \
  $(handwritten/ddquino.meta)

handwritten.meta: $(handwritten.meta)

handwritten.assets= \
  $(handwritten/ddquino.assets)

handwritten.assets: $(handwritten.assets)

handwritten.check: handwritten/ddquino.check

handwritten/%/meta.json: ../handwritten/%/meta.json handwritten/.%.pre
	.script/build_metadata.sh "$<" > "$@"

# ------------------------------------ #

.PHONY: \
  handwritten handwritten.clean handwritten.meta handwritten.assets handwritten.check \
  handwritten/ddquino handwritten/ddquino.clean handwritten/ddquino.meta handwritten/ddquino.assets handwritten/ddquino.check
