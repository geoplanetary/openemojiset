# Game

game: game/shapez

.game.pre:
	mkdir -p game
	touch .game.pre

game.clean: game/shapez.clean
	-rm -rf game/
	-rm .game.pre

include game.shapez.mk

game.meta= \
  $(game/shapez.meta)

game.meta: $(game.meta)

game.assets= \
  $(game/shapez.assets)

game.assets: $(game.assets)

game.check: game/shapez.check

game/%/meta.json: ../game/%/meta.json game/.%.pre
	.script/build_metadata.sh "$<" > "$@"

# ------------------------------------ #

.PHONY: game game.clean game.meta game.assets game.check
