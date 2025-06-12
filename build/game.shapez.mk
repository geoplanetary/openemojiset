# Game / shapez

game/shapez: game.shapez.zip

game/.shapez.pre: .game.pre
	mkdir -p game/shapez
	touch game/.shapez.pre

game/shapez.clean:
	-rm -rf game/shapez/
	-rm game.shapez.zip
	-rm game/.shapez.pre

game/shapez.meta= game/shapez/meta.json

game/shapez.meta: $(game/shapez.meta)

game/shapez.assets= \
  game/shapez/shapez_blueprint.png \
  game/shapez/shapez_bluerectangleright.png \
  game/shapez/shapez_circle.png \
  game/shapez/shapez_circleleft.png \
  game/shapez/shapez_circletop.png \
  game/shapez/shapez_circletopright.png \
  game/shapez/shapez_compass.png \
  game/shapez/shapez_cyanstar.png \
  game/shapez/shapez_fan.png \
  game/shapez/shapez_filter.png \
  game/shapez/shapez_level11.png \
  game/shapez/shapez_level13.png \
  game/shapez/shapez_level15.png \
  game/shapez/shapez_level16.png \
  game/shapez/shapez_level18.png \
  game/shapez/shapez_level19.png \
  game/shapez/shapez_level23.png \
  game/shapez/shapez_level25.png \
  game/shapez/shapez_logo.png \
  game/shapez/shapez_melon.png \
  game/shapez/shapez_meter.png \
  game/shapez/shapez_purplecircle.png \
  game/shapez/shapez_rectangle.png \
  game/shapez/shapez_rectangleright.png \
  game/shapez/shapez_redcircle.png \
  game/shapez/shapez_rocket.png

game/shapez.assets: $(game/shapez.assets)

game/shapez.check: $(game/shapez.meta) $(game/shapez.assets)
	.script/check_metadata_integrity.sh game/shapez

game.shapez.zip: $(game/shapez.meta) $(game/shapez.assets)
	cd game/shapez && zip ../../game.shapez.zip meta.json ./*.png

game/shapez/%.png:: ../game/shapez/%.svg game/.shapez.pre
	resvg -z 0.5 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

# ------------------------------------ #

.PHONY: game/shapez game/shapez.clean game/shapez.meta game/shapez.assets game/shapez.check
