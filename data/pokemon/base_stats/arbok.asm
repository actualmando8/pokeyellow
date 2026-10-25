	db DEX_ARBOK ; pokedex id

	db  60,  85,  69,  80,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

	db WRAP, LEER, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, SLUDGE_BOMB,	\
	     SHADOW_BALL, HYPER_BEAM, WATERFALL, POISON_JAB, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, KNOCK_OFF, REST,	\
	     ROCK_SLIDE, SUBSTITUTE, CRUNCH, HYPER_VOICE, STRENGTH
	; end
