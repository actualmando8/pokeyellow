	db DEX_GLOOM ; pokedex id

	db  60,  65,  70,  40,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/gloom.pic", 0, 1 ; sprite dimensions
	dw GloomPicFront, GloomPicBack

	db ABSORB, POISONPOWDER, STUN_SPORE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, POISON_JAB,	\
	     GIGA_DRAIN, SOLARBEAM, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     REST, SUBSTITUTE, CUT
	; end
