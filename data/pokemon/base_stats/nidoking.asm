	db DEX_NIDOKING ; pokedex id

	db  81,  92,  77,  85,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db TACKLE, HORN_ATTACK, POISON_STING, THRASH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, CLOSE_COMBAT, TOXIC, BODY_SLAM,	\
	     DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, POISON_JAB, SEISMIC_TOSS, THUNDERBOLT, THUNDER,	\
	     EARTHQUAKE, EARTH_POWER, DOUBLE_TEAM, REFLECT, X_SCISSOR,	\
	     FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST, ROCK_SLIDE,	\
	     SUBSTITUTE, CRUNCH, PLAY_ROUGH, SURF, STRENGTH, NEWPICBANK
	; end
