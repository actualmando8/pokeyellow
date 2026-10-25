	db DEX_SEAKING ; pokedex id

	db  80,  92,  65,  68,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1 ; sprite dimensions
	dw SeakingPicFront, SeakingPicBack

	db POUND, TAIL_WHIP, SUPERSONIC, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, DOUBLE_TEAM, SWIFT, KNOCK_OFF, REST,	\
	     SUBSTITUTE, CRUNCH, HYPER_VOICE, SURF
	; end
