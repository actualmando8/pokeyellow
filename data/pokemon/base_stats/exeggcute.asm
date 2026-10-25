	db DEX_EXEGGCUTE ; pokedex id

	db  60,  40,  80,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1 ; sprite dimensions
	dw ExeggcutePicFront, ExeggcutePicBack

	db TACKLE, HYPNOSIS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, SHADOW_BALL, GIGA_DRAIN,	\
	     PSYCHIC_M, ENERGY_BALL, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     SELFDESTRUCT, REST, ZEN_HEADBUTT, EXPLOSION, SUBSTITUTE
	; end
