	db DEX_HAPPINY ; pokedex id

	db 100,   5,   5,  30,  15,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 130 ; catch rate
	db 110 ; base exp

	INCBIN "gfx/pokemon/front/happiny.pic", 0, 1 ; sprite dimensions
	dw HappinyPicFront, HappinyPicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST,	\
	     THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH, STRENGTH,	\
	     FLASH, NEWPICBANK
	; end
