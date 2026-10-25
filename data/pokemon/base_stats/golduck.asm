	db DEX_GOLDUCK ; pokedex id

	db  80,  82,  78,  85,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

	db SCRATCH, TAIL_WHIP, DISABLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, WATERFALL, SEISMIC_TOSS, DIG, ENERGY_BALL,	\
	     DOUBLE_TEAM, SWIFT, KNOCK_OFF, REST, SUBSTITUTE,	\
	     SURF, STRENGTH
	; end
