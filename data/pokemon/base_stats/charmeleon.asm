	db DEX_CHARMELEON ; pokedex id

	db  58,  64,  58,  80,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db SCRATCH, GROWL, EMBER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, SWORDS_DANCE, TOXIC, BODY_SLAM, FLAMETHROWER,	\
	     DOUBLE_EDGE, SEISMIC_TOSS, DIG, DOUBLE_TEAM, REFLECT,	\
	     FIRE_BLAST, SWIFT, REST, SUBSTITUTE, CUT,	\
	     STRENGTH
	; end
