# OpenEmojiSet

all:  barcode blobs bunhd game handwritten letters prideflags twemoji

clean: barcode.clean blobs.clean bunhd.clean emojis.clean game.clean handwritten.clean letters.clean prideflags.clean twemoji.clean

assets: barcode.assets blobs.assets bunhd.assets game.assets handwritten.assets letters.assets prideflags.assets twemoji.assets

check:  barcode.check blobs.check bunhd.check emojis.check game.check handwritten.check letters.check prideflags.check twemoji.check

help:
	@echo "build mi-openmojiset"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* clean  | clean build directory"
	@echo "* assets | build all assets"
	@echo "* check  | check metadata integrity"
	@echo "* emojis | build emoji bundle package"
	@echo "Individual targets:"
	@echo "> barcode blobs bunhd game handwritten letters prideflags twemoji"
	@echo "* <target>.clean  | clean target"
	@echo "* <target>.assets | build assets"
	@echo "* <target>.check  | check metadata integrity"

# ------------------------------------ #

include barcode.mk
include blobs.mk
include bunhd.mk
include game.mk
include handwritten.mk
include letters.mk
include prideflags.mk
include twemoji.mk

# Emoji Bundle------------------------ #
emojis: emojis.zip

emojis.clean:
	-rm emojis.zip
	-rm -rf emojis/
	-rm .emojis.assets
	-rm .emojis.meta
	-rm .emojis.pre

.emojis.pre:
	mkdir -p emojis
	touch .emojis.pre

emojis.meta= \
  $(barcode.meta) \
  $(blobs.meta) \
  $(bunhd.meta) \
  $(game.meta) \
  $(handwritten.meta) \
  $(letters.meta) \
  $(prideflags.meta) \
  $(twemoji.meta)

emojis.meta: $(emojis.meta)

.emojis.meta: .emojis.pre $(emojis.meta)
	.script/merge_metadata.sh $(emojis.meta) > emojis/meta.json
	touch .emojis.meta

emojis.assets= \
  $(barcode.assets) \
  $(blobs.assets) \
  $(bunhd.assets) \
  $(game.assets) \
  $(handwritten.assets) \
  $(letters.assets) \
  $(prideflags.assets) \
  $(twemoji.assets)

emojis.assets: $(emojis.assets)

.emojis.assets: .emojis.pre $(emojis.assets)
	cp -t emojis/ $(emojis.assets)
	touch .emojis.assets

emojis.check: .emojis.meta .emojis.assets
	.script/check_metadata_integrity.sh emojis

emojis.zip: .emojis.meta .emojis.assets
	cd emojis/ && zip ../emojis.zip meta.json ./*.gif ./*.png ./*.webp


# ------------------------------------ #

.PHONY: all clean check help assets.clean
