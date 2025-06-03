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
	@echo "> barcode blobs game squared twemoji"
	@echo "* <target>.clean | clean target"

assets: barcode blobs game squared twemoji

assets.clean: barcode.clean blobs.clean game.clean squared.clean twemoji.clean

include barcode.mk
include blobs.mk
include game.mk
include emojis.mk
include squared.mk
include twemoji.mk
