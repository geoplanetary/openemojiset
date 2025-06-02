.PHONY: squared squared.clean

squared: squared/dialect-ja squared/general-ja squared/かわいい-ja

squared.clean: squared/dialect-ja.clean squared/general-ja.clean squared/かわいい-ja.clean
	-rm -rf squared/
	-rm .squared.pre

.squared.pre:
	-mkdir -p squared && \
	touch .squared.pre

include squared.dialect-ja.mk
include squared.general-ja.mk
include squared.かわいい-ja.mk
