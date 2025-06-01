.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emojis.zip: .emojis.pre twemoji
	cp -t emojis/ twemoji/*.png
	jq -nc --slurpfile twemoji twemoji/meta.json '{metaVersion:2,emojis:[]}|.emojis|=(.+$$twemoji[0].emojis)' > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.png
