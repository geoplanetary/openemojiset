.PHONY: letters letters.clean

letters: \
  letters/cthulhu-ja \
  letters/dialect-ja \
  letters/general-ja \
  letters/greetings-ja \
  letters/oldbook-ja \
  letters/square-ja \
  letters/subtitle-ja \
  letters/かわいい-ja \
  letters/たれ-ja \
  letters/はなし-ja \
  letters/祭り-ja

letters.clean: \
  letters/cthulhu-ja.clean \
  letters/dialect-ja.clean \
  letters/general-ja.clean \
  letters/greetings-ja.clean \
  letters/oldbook-ja.clean \
  letters/square-ja.clean \
  letters/subtitle-ja.clean \
  letters/かわいい-ja.clean \
  letters/たれ-ja.clean \
  letters/はなし-ja.clean \
  letters/祭り-ja.clean
	-rm -rf letters/
	-rm .letters.pre

.letters.pre:
	mkdir -p letters
	touch .letters.pre

include letters.cthulhu-ja.mk
include letters.dialect-ja.mk
include letters.general-ja.mk
include letters.greetings-ja.mk
include letters.oldbook-ja.mk
include letters.square-ja.mk
include letters.subtitle-ja.mk
include letters.かわいい-ja.mk
include letters.たれ-ja.mk
include letters.はなし-ja.mk
include letters.祭り-ja.mk
