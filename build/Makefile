.PHONY: all clean help assets.clean

all: emojis assets

clean: emojis.clean assets.clean

help:
	@echo "build mi-openmojiset"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* assets | build all assets"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> barcode blobs bunhd game handwritten prideflags square text twemoji"
	@echo "* <target>.clean | clean target"

assets: barcode blobs bunhd game handwritten prideflags square text twemoji

assets.clean: barcode.clean blobs.clean bunhd.clean game.clean handwritten.clean prideflags.clean square.clean text.clean twemoji.clean

include barcode.mk
include blobs.mk
include bunhd.mk
include game.mk
include handwritten.mk
include emojis.mk
include prideflags.mk
include square.mk
include text.mk
include twemoji.mk
