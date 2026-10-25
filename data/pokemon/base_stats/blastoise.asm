	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 100,  78,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, WATERFALL, SEISMIC_TOSS, EARTHQUAKE, DIG,	\
	     DOUBLE_TEAM, REFLECT, KNOCK_OFF, REST, SUBSTITUTE,	\
	     SURF, STRENGTH
	; end
