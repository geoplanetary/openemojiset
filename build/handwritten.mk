.PHONY: handwritten handwritten.clean

handwritten: handwritten/ddquino

handwritten.clean: handwritten/ddquino.clean
	-rm -rf handwritten/
	-rm .handwritten.pre

.handwritten.pre:
	mkdir -p handwritten
	touch .handwritten.pre

include handwritten.ddquino.mk
