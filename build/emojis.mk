.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emoji_assets= \
  barcode/*.png \
  blobs/blobbluebird/*.webp \
  blobs/blobemoji/*.png \
  blobs/blobemoji/*.gif \
  blobs/blobcat/*.png \
  blobs/meowmoji/*.png \
  blobs/meowmoji/*.gif \
  bunhd/*.png \
  game/shapez/*.png \
  square/dialect-ja/*.png \
  square/general-ja/*.png \
  square/かわいい-ja/*.png \
  twemoji/*.png

emoji_metadata_list= \
  barcode/meta.json \
  blobs/blobbluebird/meta.json \
  blobs/blobemoji/meta.json \
  blobs/blobcat/meta.json \
  blobs/meowmoji/meta.json \
  bunhd/meta.json \
  game/shapez/meta.json \
  square/dialect-ja/meta.json \
  square/general-ja/meta.json \
  square/かわいい-ja/meta.json \
  twemoji/meta.json

emojis.zip: .emojis.pre assets
	cp -t emojis/ $(emoji_assets)
	.script/merge_metadata.sh $(emoji_metadata_list) > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.gif ./*.png ./*.webp
