	db DEX_NIDORINA ; pokedex id

	db  70,  62,  67,  56,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM,	\
	     BLIZZARD, POISON_JAB, THUNDERBOLT, THUNDER, EARTH_POWER,	\
	     DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE
	; end
