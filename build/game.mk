.PHONY: game game.clean

game: game/shapez

game.clean: game/shapez.clean
	-rm -rf game/
	-rm .game.pre

.game.pre:
	mkdir -p game
	touch .game.pre

include game.shapez.mk
