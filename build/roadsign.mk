# Roadsign

roadsign: roadsign/jp

.roadsign.pre:
	mkdir -p roadsign
	touch .roadsign.pre

roadsign.clean: roadsign/jp.clean
	-rm -rf roadsign/
	-rm .roadsign.pre

# jp --------------------------------- #
roadsign/jp: roadsign.jp.zip

roadsign/.jp.pre: .roadsign.pre
	mkdir -p roadsign/jp
	touch roadsign/.jp.pre

roadsign/jp.clean:
	-rm -rf roadsign/jp/
	-rm roadsign.jp.zip
	-rm roadsign/.jp.pre

roadsign/jp.meta= roadsign/jp/meta.json

roadsign/jp.meta: $(roadsign/jp.meta)

roadsign/jp.assets= \
  roadsign/jp/japanroadsign_117a.png \
  roadsign/jp/japanroadsign_201_1a.png \
  roadsign/jp/japanroadsign_201_1b_left.png \
  roadsign/jp/japanroadsign_201_1b_right.png \
  roadsign/jp/japanroadsign_201_1c.png \
  roadsign/jp/japanroadsign_201_1d.png \
  roadsign/jp/japanroadsign_201_2.png \
  roadsign/jp/japanroadsign_202_left.png \
  roadsign/jp/japanroadsign_202_right.png \
  roadsign/jp/japanroadsign_203_left.png \
  roadsign/jp/japanroadsign_203_right.png \
  roadsign/jp/japanroadsign_204_left.png \
  roadsign/jp/japanroadsign_204_right.png \
  roadsign/jp/japanroadsign_205_left.png \
  roadsign/jp/japanroadsign_205_right.png \
  roadsign/jp/japanroadsign_206_left.png \
  roadsign/jp/japanroadsign_206_right.png \
  roadsign/jp/japanroadsign_207a.png \
  roadsign/jp/japanroadsign_207b.png \
  roadsign/jp/japanroadsign_208_1.png \
  roadsign/jp/japanroadsign_208_2.png \
  roadsign/jp/japanroadsign_209_1.png \
  roadsign/jp/japanroadsign_209_2.png \
  roadsign/jp/japanroadsign_209_3.png \
  roadsign/jp/japanroadsign_210.png \
  roadsign/jp/japanroadsign_211.png \
  roadsign/jp/japanroadsign_212_1.png \
  roadsign/jp/japanroadsign_212_2.png \
  roadsign/jp/japanroadsign_212_3.png \
  roadsign/jp/japanroadsign_212_4.png \
  roadsign/jp/japanroadsign_213.png \
  roadsign/jp/japanroadsign_214_1.png \
  roadsign/jp/japanroadsign_214_2_deer.png \
  roadsign/jp/japanroadsign_214_2_hare.png \
  roadsign/jp/japanroadsign_214_2_monkey.png \
  roadsign/jp/japanroadsign_214_2_raccoon_dog.png \
  roadsign/jp/japanroadsign_215.png \
  roadsign/jp/japanroadsign_301.png \
  roadsign/jp/japanroadsign_302.png \
  roadsign/jp/japanroadsign_303.png \
  roadsign/jp/japanroadsign_304.png \
  roadsign/jp/japanroadsign_305.png \
  roadsign/jp/japanroadsign_306.png \
  roadsign/jp/japanroadsign_307.png \
  roadsign/jp/japanroadsign_308.png \
  roadsign/jp/japanroadsign_309.png \
  roadsign/jp/japanroadsign_310_1.png \
  roadsign/jp/japanroadsign_310_2.png \
  roadsign/jp/japanroadsign_310_3.png \
  roadsign/jp/japanroadsign_311a_left.png \
  roadsign/jp/japanroadsign_311a_right.png \
  roadsign/jp/japanroadsign_311b_left.png \
  roadsign/jp/japanroadsign_311b_right.png \
  roadsign/jp/japanroadsign_311c.png \
  roadsign/jp/japanroadsign_311d.png \
  roadsign/jp/japanroadsign_311e.png \
  roadsign/jp/japanroadsign_311f_left.png \
  roadsign/jp/japanroadsign_311f_right.png \
  roadsign/jp/japanroadsign_312.png \
  roadsign/jp/japanroadsign_313.png \
  roadsign/jp/japanroadsign_314.png \
  roadsign/jp/japanroadsign_315.png \
  roadsign/jp/japanroadsign_316.png \
  roadsign/jp/japanroadsign_318.png \
  roadsign/jp/japanroadsign_319.png \
  roadsign/jp/japanroadsign_320.png \
  roadsign/jp/japanroadsign_321.png \
  roadsign/jp/japanroadsign_322.png \
  roadsign/jp/japanroadsign_323_limit50.png \
  roadsign/jp/japanroadsign_324_limit30.png \
  roadsign/jp/japanroadsign_325_1.png \
  roadsign/jp/japanroadsign_325_2.png \
  roadsign/jp/japanroadsign_325_3.png \
  roadsign/jp/japanroadsign_325_4.png \
  roadsign/jp/japanroadsign_325_5a.png \
  roadsign/jp/japanroadsign_325_5b.png \
  roadsign/jp/japanroadsign_326_1a_left.png \
  roadsign/jp/japanroadsign_326_1b.png \
  roadsign/jp/japanroadsign_326_2a_left.png \
  roadsign/jp/japanroadsign_326_2b.png \
  roadsign/jp/japanroadsign_327_1.png \
  roadsign/jp/japanroadsign_327_10.png \
  roadsign/jp/japanroadsign_327_11.png \
  roadsign/jp/japanroadsign_327_12.png \
  roadsign/jp/japanroadsign_327_13.png \
  roadsign/jp/japanroadsign_327_2.png \
  roadsign/jp/japanroadsign_327_3.png \
  roadsign/jp/japanroadsign_327_4_1.png \
  roadsign/jp/japanroadsign_327_4_2.png \
  roadsign/jp/japanroadsign_327_5.png \
  roadsign/jp/japanroadsign_327_6.png \
  roadsign/jp/japanroadsign_327_7a.png \
  roadsign/jp/japanroadsign_327_7b.png \
  roadsign/jp/japanroadsign_327_7c.png \
  roadsign/jp/japanroadsign_327_7d.png \
  roadsign/jp/japanroadsign_327_8.png \
  roadsign/jp/japanroadsign_327_9.png \
  roadsign/jp/japanroadsign_328.png \
  roadsign/jp/japanroadsign_329a.png \
  roadsign/jp/japanroadsign_329b.png \
  roadsign/jp/japanroadsign_330a.png \
  roadsign/jp/japanroadsign_330b.png \
  roadsign/jp/japanroadsign_331.png \
  roadsign/jp/japanroadsign_332a.png \
  roadsign/jp/japanroadsign_332b.png \
  roadsign/jp/japanroadsign_401.png \
  roadsign/jp/japanroadsign_402.png \
  roadsign/jp/japanroadsign_404.png \
  roadsign/jp/japanroadsign_405.png \
  roadsign/jp/japanroadsign_406_1.png \
  roadsign/jp/japanroadsign_406_2.png \
  roadsign/jp/japanroadsign_407_1a.png \
  roadsign/jp/japanroadsign_407_1b.png \
  roadsign/jp/japanroadsign_407_2.png \
  roadsign/jp/japanroadsign_407_3.png \
  roadsign/jp/japanroadsign_408.png \
  roadsign/jp/japanroadsign_409a.png \
  roadsign/jp/japanroadsign_409b.png \
  roadsign/jp/japanroadsign_501_100meters.png \
  roadsign/jp/japanroadsign_501_50meters.png \
  roadsign/jp/japanroadsign_501_wholecity.png \
  roadsign/jp/japanroadsign_502_08hto20h.png \
  roadsign/jp/japanroadsign_502_exceptsundayandholiday.png \
  roadsign/jp/japanroadsign_503a_exceptmoped.png \
  roadsign/jp/japanroadsign_503a_largetracks.png \
  roadsign/jp/japanroadsign_503b.png \
  roadsign/jp/japanroadsign_503c.png \
  roadsign/jp/japanroadsign_503d.png \
  roadsign/jp/japanroadsign_504_1_6meters.png \
  roadsign/jp/japanroadsign_504_2_parkingmeter.png \
  roadsign/jp/japanroadsign_504_2_parkingticket.png \
  roadsign/jp/japanroadsign_505a.png \
  roadsign/jp/japanroadsign_505b.png \
  roadsign/jp/japanroadsign_505c.png \
  roadsign/jp/japanroadsign_506_1.png \
  roadsign/jp/japanroadsign_506_2.png \
  roadsign/jp/japanroadsign_507a.png \
  roadsign/jp/japanroadsign_507b.png \
  roadsign/jp/japanroadsign_507c.png \
  roadsign/jp/japanroadsign_507d.png \
  roadsign/jp/japanroadsign_508_1.png \
  roadsign/jp/japanroadsign_508_2.png \
  roadsign/jp/japanroadsign_509_1.png \
  roadsign/jp/japanroadsign_509_2.png \
  roadsign/jp/japanroadsign_509_3.png \
  roadsign/jp/japanroadsign_509_4.png \
  roadsign/jp/japanroadsign_509_5.png \
  roadsign/jp/japanroadsign_510_1_saftyspeed30.png \
  roadsign/jp/japanroadsign_510_1_weeklyshoulder.png \
  roadsign/jp/japanroadsign_510_2_noisecontrolzone.png \
  roadsign/jp/japanroadsign_511.png \
  roadsign/jp/japanroadsign_512.png \
  roadsign/jp/japanroadsign_513.png \
  roadsign/jp/japanroadsign_514.png

roadsign/jp.assets: $(roadsign/jp.assets)

roadsign/jp.check: $(roadsign/jp.meta) $(roadsign/jp.assets)
	.script/check_metadata_integrity.sh roadsign/jp

roadsign.jp.zip: $(roadsign/jp.meta) $(roadsign/jp.assets)
	cd roadsign/jp && zip ../../roadsign.jp.zip meta.json ./*.png

roadsign/jp/%.png:: ../roadsign/jp/%.svg roadsign/.jp.pre
	resvg -z 1 --dpi 384 $< $@
	optipng -q --fix $@

# Defined individually to align the size
roadsign/jp/japanroadsign_301.png: ../roadsign/jp/japanroadsign_301.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_302.png: ../roadsign/jp/japanroadsign_302.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_303.png: ../roadsign/jp/japanroadsign_303.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_304.png: ../roadsign/jp/japanroadsign_304.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_305.png: ../roadsign/jp/japanroadsign_305.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_306.png: ../roadsign/jp/japanroadsign_306.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_307.png: ../roadsign/jp/japanroadsign_307.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_308.png: ../roadsign/jp/japanroadsign_308.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_309.png: ../roadsign/jp/japanroadsign_309.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_310_1.png: ../roadsign/jp/japanroadsign_310_1.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_310_2.png: ../roadsign/jp/japanroadsign_310_2.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311a_left.png: ../roadsign/jp/japanroadsign_311a_left.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311a_right.png: ../roadsign/jp/japanroadsign_311a_right.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311b_left.png: ../roadsign/jp/japanroadsign_311b_left.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311b_right.png: ../roadsign/jp/japanroadsign_311b_right.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311c.png: ../roadsign/jp/japanroadsign_311c.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311e.png: ../roadsign/jp/japanroadsign_311e.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311f_left.png: ../roadsign/jp/japanroadsign_311f_left.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_311f_right.png: ../roadsign/jp/japanroadsign_311f_right.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_312.png: ../roadsign/jp/japanroadsign_312.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_313.png: ../roadsign/jp/japanroadsign_313.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_314.png: ../roadsign/jp/japanroadsign_314.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_315.png: ../roadsign/jp/japanroadsign_315.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_316.png: ../roadsign/jp/japanroadsign_316.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_318.png: ../roadsign/jp/japanroadsign_318.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_319.png: ../roadsign/jp/japanroadsign_319.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_320.png: ../roadsign/jp/japanroadsign_320.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_321.png: ../roadsign/jp/japanroadsign_321.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_322.png: ../roadsign/jp/japanroadsign_322.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_323_limit50.png: ../roadsign/jp/japanroadsign_323_limit50.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_324_limit30.png: ../roadsign/jp/japanroadsign_324_limit30.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_1.png: ../roadsign/jp/japanroadsign_325_1.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_2.png: ../roadsign/jp/japanroadsign_325_2.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_3.png: ../roadsign/jp/japanroadsign_325_3.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_4.png: ../roadsign/jp/japanroadsign_325_4.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_5a.png: ../roadsign/jp/japanroadsign_325_5a.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_325_5b.png: ../roadsign/jp/japanroadsign_325_5b.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_327_8.png: ../roadsign/jp/japanroadsign_327_8.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_327_9.png: ../roadsign/jp/japanroadsign_327_9.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_328.png: ../roadsign/jp/japanroadsign_328.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_329a.png: ../roadsign/jp/japanroadsign_329a.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_329b.png: ../roadsign/jp/japanroadsign_329b.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_330a.png: ../roadsign/jp/japanroadsign_330a.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_330b.png: ../roadsign/jp/japanroadsign_330b.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_331.png: ../roadsign/jp/japanroadsign_331.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_332a.png: ../roadsign/jp/japanroadsign_332a.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_332b.png: ../roadsign/jp/japanroadsign_332b.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_401.png: ../roadsign/jp/japanroadsign_401.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_405.png: ../roadsign/jp/japanroadsign_405.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_407_1a.png: ../roadsign/jp/japanroadsign_407_1a.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_407_1b.png: ../roadsign/jp/japanroadsign_407_1b.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_407_2.png: ../roadsign/jp/japanroadsign_407_2.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_407_3.png: ../roadsign/jp/japanroadsign_407_3.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_408.png: ../roadsign/jp/japanroadsign_408.svg roadsign/.jp.pre
	resvg -z 0.05 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_507c.png: ../roadsign/jp/japanroadsign_507c.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@
roadsign/jp/japanroadsign_510_1_saftyspeed30.png: ../roadsign/jp/japanroadsign_510_1_saftyspeed30.svg roadsign/.jp.pre
	resvg -z 0.5 --dpi 384 $< $@
	optipng -q --fix $@


# ------------------------------------ #

roadsign.meta= \
  $(roadsign/jp.meta)

roadsign.meta: $(roadsign.meta)

roadsign.assets= \
  $(roadsign/jp.assets)

roadsign.assets: $(roadsign.assets)

roadsign.check: roadsign/jp.check

roadsign/%/meta.json: ../roadsign/%/meta.json roadsign/.%.pre
	.script/build_metadata.sh "$<" > "$@"

# ------------------------------------ #

.PHONY: \
  roadsign roadsign.clean roadsign.meta roadsign.assets roadsign.check \
  roadsign/jp roadsign/jp.clean roadsign/jp.meta roadsign/jp.assets roadsign/jp.check
