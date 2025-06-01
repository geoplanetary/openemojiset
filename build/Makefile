.PHONY: all clean help

all: barcode emojis assets

clean: barcode.clean emojis.clean twemoji.clean

help:
	@echo "build mi-openmojiset"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* assets | build all assets"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> barcode twemoji"
	@echo "* <target>.clean | clean target"

assets: barcode twemoji

include barcode.mk
include emojis.mk
include twemoji.mk
