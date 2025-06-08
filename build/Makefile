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
	@echo "> barcode blobs bunhd game prideflags square twemoji"
	@echo "* <target>.clean | clean target"

assets: barcode blobs bunhd game prideflags square twemoji

assets.clean: barcode.clean blobs.clean bunhd.clean game.clean prideflags.clean square.clean twemoji.clean

include barcode.mk
include blobs.mk
include bunhd.mk
include game.mk
include emojis.mk
include prideflags.mk
include square.mk
include twemoji.mk
