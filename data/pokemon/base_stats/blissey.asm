	db DEX_BLISSEY ; pokedex id

	db 255,  10,  10,  55,  75, 135
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/blissey.pic", 0, 1 ; sprite dimensions
	dw BlisseyPicFront, BlisseyPicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, AURA_SPHERE, SOLARBEAM,	\
	     THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT,	\
	     FIRE_BLAST, FOCUS_BLAST, REST, THUNDER_WAVE, TRI_ATTACK,	\
	     SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE, STRENGTH, FLASH,	\
	     NEWPICBANK
	; end
