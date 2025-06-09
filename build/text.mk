.PHONY: text text.clean

text: text/general-ja text/subtitle-ja

text.clean: text/general-ja.clean text/subtitle-ja.clean
	-rm -rf text/
	-rm .text.pre

.text.pre:
	-mkdir -p text && \
	touch .text.pre

include text.general-ja.mk
include text.subtitle-ja.mk
