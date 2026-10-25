	db DEX_ODDISH ; pokedex id

	db  45,  50,  55,  30,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

	db ABSORB, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, POISON_JAB,	\
	     GIGA_DRAIN, SOLARBEAM, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     REST, SUBSTITUTE, CUT
	; end
