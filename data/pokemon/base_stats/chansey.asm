	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST,	\
	     THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE,	\
	     STRENGTH, FLASH
	; end
