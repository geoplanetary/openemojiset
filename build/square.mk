.PHONY: square square.clean

square: \
  square/cthulhu-ja \
  square/dialect-ja \
  square/general-ja \
  square/greetings-ja \
  square/oldbook-ja \
  square/かわいい-ja \
  square/たれ-ja \
  square/はなし-ja \
  square/祭り-ja

square.clean: \
  square/cthulhu-ja.clean \
  square/dialect-ja.clean \
  square/general-ja.clean \
  square/greetings-ja.clean \
  square/oldbook-ja.clean \
  square/かわいい-ja.clean \
  square/たれ-ja.clean \
  square/はなし-ja.clean \
  square/祭り-ja.clean
	-rm -rf square/
	-rm .square.pre

.square.pre:
	-mkdir -p square && \
	touch .square.pre

include square.cthulhu-ja.mk
include square.dialect-ja.mk
include square.general-ja.mk
include square.greetings-ja.mk
include square.oldbook-ja.mk
include square.かわいい-ja.mk
include square.たれ-ja.mk
include square.はなし-ja.mk
include square.祭り-ja.mk
