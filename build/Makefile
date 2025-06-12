.PHONY: all clean check help assets.clean

all: emojis assets

clean: emojis.clean assets.clean

help:
	@echo "build mi-openmojiset"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* assets | build all assets"
	@echo "* check  | check metadata integrity"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> barcode blobs bunhd game handwritten letters prideflags twemoji"
	@echo "* <target>.clean | clean target"

assets: barcode blobs bunhd game handwritten letters prideflags twemoji

assets.clean: barcode.clean blobs.clean bunhd.clean game.clean handwritten.clean letters.clean prideflags.clean twemoji.clean

check: emojis
	.script/check_metadata_integrity.sh emojis

include barcode.mk
include blobs.mk
include bunhd.mk
include game.mk
include handwritten.mk
include letters.mk
include emojis.mk
include prideflags.mk
include twemoji.mk
