.PHONY: game/shapez game/shapez.clean

game/shapez: \
  game/shapez/meta.json \
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

game/shapez.clean:
	-rm -rf game/shapez/
	-rm game/.shapez.pre

game/.shapez.pre: .game.pre
	mkdir -p game/shapez
	touch game/.shapez.pre

game/shapez/meta.json: game/.shapez.pre ../game/shapez/meta.json
	.script/build_metadata.sh ../game/shapez/meta.json > game/shapez/meta.json

game/shapez/%.png:: ../game/shapez/%.svg game/.shapez.pre
	resvg -z 0.5 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
