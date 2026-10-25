	db DEX_BELLSPROUT ; pokedex id

	db  50,  75,  35,  40,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp

	INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1 ; sprite dimensions
	dw BellsproutPicFront, BellsproutPicBack

	db VINE_WHIP, GROWTH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, POISON_JAB,	\
	     GIGA_DRAIN, SOLARBEAM, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     KNOCK_OFF, REST, SUBSTITUTE, CUT
	; end
