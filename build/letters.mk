.PHONY: letters letters.clean

letters: \
  letters/general-ja \
  letters/subtitle-ja

letters.clean: \
  letters/general-ja.clean \
  letters/subtitle-ja.clean
	-rm -rf letters/
	-rm .letters.pre

.letters.pre:
	mkdir -p letters
	touch .letters.pre

include letters.general-ja.mk
include letters.subtitle-ja.mk
