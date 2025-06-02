.PHONY: barcode barcode.clean

barcode: barcode/meta.json barcode/ean13_4901777192607.png barcode/ean13_4902102136716.png barcode/ean13_4909411086299.png

barcode.clean:
	-rm -rf barcode/
	-rm .barcode.pre

.barcode.pre:
	-mkdir -p barcode && \
	touch .barcode.pre

barcode/meta.json: .barcode.pre ../barcode/meta.json
	.script/build_metadata.sh ../barcode/meta.json > barcode/meta.json

barcode/ean13_4901777192607.png: .barcode.pre ../barcode/ean/ean13_4901777192607.svg
	resvg -z 4.0 --dpi 384 ../barcode/ean/ean13_4901777192607.svg barcode/ean13_4901777192607.png && optipng -q barcode/ean13_4901777192607.png

barcode/ean13_4902102136716.png: .barcode.pre ../barcode/ean/ean13_4902102136716.svg
	resvg -z 4.0 --dpi 384 ../barcode/ean/ean13_4902102136716.svg barcode/ean13_4902102136716.png && optipng -q barcode/ean13_4902102136716.png

barcode/ean13_4909411086299.png: .barcode.pre ../barcode/ean/ean13_4909411086299.svg
	resvg -z 4.0 --dpi 384 ../barcode/ean/ean13_4909411086299.svg barcode/ean13_4909411086299.png && optipng -q barcode/ean13_4909411086299.png