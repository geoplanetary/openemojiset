.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emojis.zip: .emojis.pre barcode blobs game squared twemoji
	cp -t emojis/ barcode/*.png blobs/blobbluebird/*.webp game/shapez/*.png squared/dialect-ja/*.png squared/general-ja/*.png squared/かわいい-ja/*.png twemoji/*.png
	.script/merge_metadata.sh barcode/meta.json blobs/blobbluebird/meta.json game/shapez/meta.json squared/dialect-ja/meta.json squared/general-ja/meta.json squared/かわいい-ja/meta.json twemoji/meta.json > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.png ./*.webp
