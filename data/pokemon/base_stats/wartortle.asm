	db DEX_WARTORTLE ; pokedex id

	db  59,  63,  80,  58,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     WATERFALL, SEISMIC_TOSS, DIG, DOUBLE_TEAM, REFLECT,	\
	     REST, SUBSTITUTE, SURF, STRENGTH
	; end
