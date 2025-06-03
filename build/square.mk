.PHONY: square square.clean

square: square/dialect-ja square/general-ja square/かわいい-ja

square.clean: square/dialect-ja.clean square/general-ja.clean square/かわいい-ja.clean
	-rm -rf square/
	-rm .square.pre

.square.pre:
	-mkdir -p square && \
	touch .square.pre

include square.dialect-ja.mk
include square.general-ja.mk
include square.かわいい-ja.mk
