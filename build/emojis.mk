.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	mkdir -p emojis
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
  letters/cthulhu-ja/*.png \
  letters/dialect-ja/*.png \
  letters/general-ja/*.png \
  letters/general-ja/*.gif \
  letters/greetings-ja/*.png \
  letters/oldbook-ja/*.png \
  letters/square-ja/*.png \
  letters/square-ja/*.gif \
  letters/subtitle-ja/*.png \
  letters/かわいい-ja/*.png \
  letters/たれ-ja/*.png \
  letters/はなし-ja/*.gif \
  letters/祭り-ja/*.png \
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
  letters/cthulhu-ja/meta.json \
  letters/dialect-ja/meta.json \
  letters/general-ja/meta.json \
  letters/greetings-ja/meta.json \
  letters/oldbook-ja/meta.json \
  letters/square-ja/meta.json \
  letters/subtitle-ja/meta.json \
  letters/かわいい-ja/meta.json \
  letters/たれ-ja/meta.json \
  letters/はなし-ja/meta.json \
  letters/祭り-ja/meta.json \
  twemoji/meta.json

emojis.zip: .emojis.pre assets
	cp -t emojis/ $(emoji_assets)
	.script/merge_metadata.sh $(emoji_metadata_list) > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.gif ./*.png ./*.webp
