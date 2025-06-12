# BunHD

bunhd: bunhd.zip

bunhd.clean:
	-rm -rf bunhd/
	-rm bunhd.zip
	-rm .bunhd.pre

.bunhd.pre:
	mkdir -p bunhd
	touch .bunhd.pre

bunhd.meta= bunhd/meta.json

bunhd.meta: $(bunhd.meta)

bunhd.assets= \
  bunhd/abunhd.png \
  bunhd/abunhdcry.png \
  bunhd/abunhdhappy.png \
  bunhd/abunhdhappyhop.png \
  bunhd/abunhdhop.png \
  bunhd/abunhdowohop.png \
  bunhd/abunhdsadpat.png \
  bunhd/bunhd.png \
  bunhd/bunhdangry.png \
  bunhd/bunhdaww.png \
  bunhd/bunhdcomfy.png \
  bunhd/bunhdcomfyhappy.png \
  bunhd/bunhdcomfyidle.png \
  bunhd/bunhdcomfysleep.png \
  bunhd/bunhdcry.png \
  bunhd/bunhdgoogly.png \
  bunhd/bunhdgrumpy.png \
  bunhd/bunhdhappy.png \
  bunhd/bunhdheart.png \
  bunhd/bunhdidle.png \
  bunhd/bunhdknife.png \
  bunhd/bunhdlurk.png \
  bunhd/bunhdlurkaww.png \
  bunhd/bunhdmlem.png \
  bunhd/bunhdowo.png \
  bunhd/bunhdpeek.png \
  bunhd/bunhdprelurkcofe.png \
  bunhd/bunhdprelurkcroutons.png \
  bunhd/bunhdprelurkdonut.png \
  bunhd/bunhdsad.png \
  bunhd/bunhdsleep.png \
  bunhd/bunhdsmug.png \
  bunhd/bunhdthink.png \
  bunhd/bunhdthinking.png \
  bunhd/bunhduwu.png

bunhd.assets: $(bunhd.assets)

bunhd.check: $(bunhd.meta) $(bunhd.assets)
	.script/check_metadata_integrity.sh bunhd

bunhd.zip: $(bunhd.meta) $(bunhd.assets)
	cd bunhd && zip ../bunhd.zip meta.json ./*.png

bunhd/meta.json: ../bunhd/meta.json .bunhd.pre
	.script/build_metadata.sh ../bunhd/meta.json > bunhd/meta.json

bunhd/%.png: ../bunhd/%.png .bunhd.pre
	optipng -q --fix "$<" -out "$@"

