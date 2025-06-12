# Barcode

barcode: barcode.zip

.barcode.pre:
	mkdir -p barcode
	touch .barcode.pre

barcode.clean:
	-rm -rf barcode/
	-rm barcode.zip
	-rm .barcode.pre

barcode.meta= barcode/meta.json

barcode.meta: $(barcode.meta)

barcode.assets= \
  barcode/ean13_4901777192607.png \
  barcode/ean13_4902102136716.png \
  barcode/ean13_4909411086299.png

barcode.assets: $(barcode.assets)

barcode.check: $(barcode.meta) $(barcode.assets)
	.script/check_metadata_integrity.sh barcode

barcode.zip: $(barcode.meta) $(barcode.assets)
	cd barcode && zip ../barcode.zip meta.json ./*.png

barcode/meta.json: .barcode.pre ../barcode/meta.json
	.script/build_metadata.sh ../barcode/meta.json > barcode/meta.json

barcode/%.png: ../barcode/ean/%.svg .barcode.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

# ------------------------------------ #

.PHONY: barcode barcode.clean barcode.meta barcode.assets barcode.check
