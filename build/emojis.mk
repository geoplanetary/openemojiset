.PHONY: emojis emojis.clean

emojis: emojis.zip

emojis.clean:
	-rm emojis.zip .emojis.pre
	-rm -rf emojis/

.emojis.pre:
	-mkdir -p emojis && \
	touch .emojis.pre

emojis.zip: .emojis.pre barcode twemoji
	cp -t emojis/ barcode/*.png twemoji/*.png
	jq -nc --slurpfile barcode barcode/meta.json '{metaVersion:2,emojis:[]}|.emojis|=(.+$$barcode[0].emojis)' | jq -c --slurpfile twemoji twemoji/meta.json '.emojis|=(.+$$twemoji[0].emojis)' > emojis/meta.json
	cd emojis/ && zip ../emojis.zip meta.json ./*.png
