	db DEX_EXEGGUTOR ; pokedex id

	db  95,  95,  85,  55, 125, 125
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp

	INCBIN "gfx/pokemon/front/exeggutor.pic", 0, 1 ; sprite dimensions
	dw ExeggutorPicFront, ExeggutorPicBack

	db TACKLE, HYPNOSIS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, FLAMETHROWER, DOUBLE_EDGE, SLUDGE_BOMB, SHADOW_BALL,	\
	     HYPER_BEAM, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, ENERGY_BALL,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, SELFDESTRUCT, KNOCK_OFF,	\
	     REST, ZEN_HEADBUTT, EXPLOSION, SUBSTITUTE, POWER_GEM,	\
	     STRENGTH
	; end
