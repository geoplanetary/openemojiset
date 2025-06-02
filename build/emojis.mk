.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emojis.zip: .emojis.pre barcode twemoji
	cp -t emojis/ barcode/*.png twemoji/*.png
	.script/merge_metadata.sh  barcode/meta.json twemoji/meta.json > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.png
