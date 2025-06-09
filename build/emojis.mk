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
  blobs/blobfox/*.png \
  blobs/cat_is_blob/*.gif \
  blobs/meowmoji/*.png \
  blobs/meowmoji/*.gif \
  blobs/queercats/*.png \
  bunhd/*.png \
  game/shapez/*.png \
  handwritten/ddquino/*.png \
  handwritten/ddquino/*.webp \
  square/dialect-ja/*.png \
  square/general-ja/*.png \
  square/general-ja/*.gif \
  square/かわいい-ja/*.png \
  text/general-ja/*.png \
  text/subtitle-ja/*.png \
  twemoji/*.png

emoji_metadata_list= \
  barcode/meta.json \
  blobs/blobbluebird/meta.json \
  blobs/blobemoji/meta.json \
  blobs/blobcat/meta.json \
  blobs/blobfox/meta.json \
  blobs/cat_is_blob/meta.json \
  blobs/meowmoji/meta.json \
  blobs/queercats/meta.json \
  bunhd/meta.json \
  game/shapez/meta.json \
  handwritten/ddquino/meta.json \
  square/dialect-ja/meta.json \
  square/general-ja/meta.json \
  square/かわいい-ja/meta.json \
  text/general-ja/meta.json \
  text/subtitle-ja/meta.json \
  twemoji/meta.json

emojis.zip: .emojis.pre assets
	cp -t emojis/ $(emoji_assets)
	.script/merge_metadata.sh $(emoji_metadata_list) > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.gif ./*.png ./*.webp
