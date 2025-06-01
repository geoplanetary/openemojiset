.PHONY: all clean help

all: emojis assets

clean: emojis.clean twemoji.clean

help:
	@echo "build mi-openmojiset"
	@echo ""
	@echo "Meta targets:"
	@echo "* all    | build all targets"
	@echo "* assets | build all assets"
	@echo "* clean  | clean build directory"
	@echo "Individual targets:"
	@echo "> twemoji"
	@echo "* <target>.clean | clean target"

assets: twemoji

include emojis.mk
include twemoji.mk
