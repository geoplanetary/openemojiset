# Twemoji

twemoji: twemoji.zip

.twemoji.pre:
	mkdir -p twemoji
	touch .twemoji.pre

twemoji.clean:
	-rm -rf twemoji/
	-rm twemoji.zip
	-rm .twemoji.pre

twemoji.meta= twemoji/meta.json

twemoji.meta: $(twemoji.meta)

twemoji.assets= \
  twemoji/squared_16.png \
  twemoji/squared_32.png \
  twemoji/squared_64.png \
  twemoji/squared_128.png \
  twemoji/squared_256.png \
  twemoji/squared_334.png \
  twemoji/squared_512.png \
  twemoji/squared_575.png \
  twemoji/squared_1024.png \
  twemoji/squared_2048.png \
  twemoji/squared_4096.png \
  twemoji/squared_8192.png \
  twemoji/squared_16384.png \
  twemoji/squared_32768.png \
  twemoji/squared_65536.png

twemoji.assets: $(twemoji.assets)

twemoji.check: $(twemoji.meta) $(twemoji.assets)
	.script/check_metadata_integrity.sh twemoji

twemoji.zip: $(twemoji.meta) $(twemoji.assets)
	cd twemoji && zip ../twemoji.zip meta.json ./*.png

twemoji/meta.json: .twemoji.pre ../twemoji/meta.json
	.script/build_metadata.sh ../twemoji/meta.json > twemoji/meta.json

twemoji/%.png: ../twemoji/%.svg .twemoji.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q "$@"

# ------------------------------------ #

.PHONY: twemoji twemoji.clean twemoji.meta twemoji.assets twemoji.check
