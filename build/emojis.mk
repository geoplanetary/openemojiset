.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emojis.zip:
