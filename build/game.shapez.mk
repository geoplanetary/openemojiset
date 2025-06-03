.PHONY: game/shapez game/shapez.clean

game/shapez: game/shapez/meta.json game/shapez/shapez_blueprint.png game/shapez/shapez_bluerectangleright.png game/shapez/shapez_circle.png game/shapez/shapez_circleleft.png game/shapez/shapez_circletop.png game/shapez/shapez_circletopright.png game/shapez/shapez_compass.png game/shapez/shapez_cyanstar.png game/shapez/shapez_fan.png game/shapez/shapez_filter.png game/shapez/shapez_level11.png game/shapez/shapez_level13.png game/shapez/shapez_level15.png game/shapez/shapez_level16.png game/shapez/shapez_level18.png game/shapez/shapez_level19.png game/shapez/shapez_level23.png game/shapez/shapez_level25.png game/shapez/shapez_logo.png game/shapez/shapez_melon.png game/shapez/shapez_meter.png game/shapez/shapez_purplecircle.png game/shapez/shapez_rectangle.png game/shapez/shapez_rectangleright.png game/shapez/shapez_redcircle.png game/shapez/shapez_rocket.png

game/shapez.clean:
	-rm -rf game/shapez/
	-rm game/.shapez.pre

game/.shapez.pre: .game.pre
	-mkdir -p game/shapez && \
	touch game/.shapez.pre

game/shapez/meta.json: game/.shapez.pre ../game/shapez/meta.json
	.script/build_metadata.sh ../game/shapez/meta.json > game/shapez/meta.json

game/shapez/shapez_blueprint.png: game/.shapez.pre ../game/shapez/shapez_blueprint.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_blueprint.svg game/shapez/shapez_blueprint.png && optipng -q game/shapez/shapez_blueprint.png

game/shapez/shapez_bluerectangleright.png: game/.shapez.pre ../game/shapez/shapez_bluerectangleright.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_bluerectangleright.svg game/shapez/shapez_bluerectangleright.png && optipng -q game/shapez/shapez_bluerectangleright.png

game/shapez/shapez_circle.png: game/.shapez.pre ../game/shapez/shapez_circle.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_circle.svg game/shapez/shapez_circle.png && optipng -q game/shapez/shapez_circle.png

game/shapez/shapez_circleleft.png: game/.shapez.pre ../game/shapez/shapez_circleleft.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_circleleft.svg game/shapez/shapez_circleleft.png && optipng -q game/shapez/shapez_circleleft.png

game/shapez/shapez_circletop.png: game/.shapez.pre ../game/shapez/shapez_circletop.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_circletop.svg game/shapez/shapez_circletop.png && optipng -q game/shapez/shapez_circletop.png

game/shapez/shapez_circletopright.png: game/.shapez.pre ../game/shapez/shapez_circletopright.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_circletopright.svg game/shapez/shapez_circletopright.png && optipng -q game/shapez/shapez_circletopright.png

game/shapez/shapez_compass.png: game/.shapez.pre ../game/shapez/shapez_compass.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_compass.svg game/shapez/shapez_compass.png && optipng -q game/shapez/shapez_compass.png

game/shapez/shapez_cyanstar.png: game/.shapez.pre ../game/shapez/shapez_cyanstar.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_cyanstar.svg game/shapez/shapez_cyanstar.png && optipng -q game/shapez/shapez_cyanstar.png

game/shapez/shapez_fan.png: game/.shapez.pre ../game/shapez/shapez_fan.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_fan.svg game/shapez/shapez_fan.png && optipng -q game/shapez/shapez_fan.png

game/shapez/shapez_filter.png: game/.shapez.pre ../game/shapez/shapez_filter.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_filter.svg game/shapez/shapez_filter.png && optipng -q game/shapez/shapez_filter.png

game/shapez/shapez_level11.png: game/.shapez.pre ../game/shapez/shapez_level11.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level11.svg game/shapez/shapez_level11.png && optipng -q game/shapez/shapez_level11.png

game/shapez/shapez_level13.png: game/.shapez.pre ../game/shapez/shapez_level13.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level13.svg game/shapez/shapez_level13.png && optipng -q game/shapez/shapez_level13.png

game/shapez/shapez_level15.png: game/.shapez.pre ../game/shapez/shapez_level15.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level15.svg game/shapez/shapez_level15.png && optipng -q game/shapez/shapez_level15.png

game/shapez/shapez_level16.png: game/.shapez.pre ../game/shapez/shapez_level16.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level16.svg game/shapez/shapez_level16.png && optipng -q game/shapez/shapez_level16.png

game/shapez/shapez_level18.png: game/.shapez.pre ../game/shapez/shapez_level18.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level18.svg game/shapez/shapez_level18.png && optipng -q game/shapez/shapez_level18.png

game/shapez/shapez_level19.png: game/.shapez.pre ../game/shapez/shapez_level19.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level19.svg game/shapez/shapez_level19.png && optipng -q game/shapez/shapez_level19.png

game/shapez/shapez_level23.png: game/.shapez.pre ../game/shapez/shapez_level23.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level23.svg game/shapez/shapez_level23.png && optipng -q game/shapez/shapez_level23.png

game/shapez/shapez_level25.png: game/.shapez.pre ../game/shapez/shapez_level25.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_level25.svg game/shapez/shapez_level25.png && optipng -q game/shapez/shapez_level25.png

game/shapez/shapez_logo.png: game/.shapez.pre ../game/shapez/shapez_logo.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_logo.svg game/shapez/shapez_logo.png && optipng -q game/shapez/shapez_logo.png

game/shapez/shapez_melon.png: game/.shapez.pre ../game/shapez/shapez_melon.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_melon.svg game/shapez/shapez_melon.png && optipng -q game/shapez/shapez_melon.png

game/shapez/shapez_meter.png: game/.shapez.pre ../game/shapez/shapez_meter.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_meter.svg game/shapez/shapez_meter.png && optipng -q game/shapez/shapez_meter.png

game/shapez/shapez_purplecircle.png: game/.shapez.pre ../game/shapez/shapez_purplecircle.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_purplecircle.svg game/shapez/shapez_purplecircle.png && optipng -q game/shapez/shapez_purplecircle.png

game/shapez/shapez_rectangle.png: game/.shapez.pre ../game/shapez/shapez_rectangle.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_rectangle.svg game/shapez/shapez_rectangle.png && optipng -q game/shapez/shapez_rectangle.png

game/shapez/shapez_rectangleright.png: game/.shapez.pre ../game/shapez/shapez_rectangleright.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_rectangleright.svg game/shapez/shapez_rectangleright.png && optipng -q game/shapez/shapez_rectangleright.png

game/shapez/shapez_redcircle.png: game/.shapez.pre ../game/shapez/shapez_redcircle.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_redcircle.svg game/shapez/shapez_redcircle.png && optipng -q game/shapez/shapez_redcircle.png

game/shapez/shapez_rocket.png: game/.shapez.pre ../game/shapez/shapez_rocket.svg
	resvg -z 0.5 --dpi 384 ../game/shapez/shapez_rocket.svg game/shapez/shapez_rocket.png && optipng -q game/shapez/shapez_rocket.png
