	db DEX_NIDOQUEEN ; pokedex id

	db  90,  82,  87,  76,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TACKLE, SCRATCH, TAIL_WHIP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, CLOSE_COMBAT, TOXIC, BODY_SLAM,	\
	     DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, POISON_JAB, SEISMIC_TOSS, THUNDERBOLT, THUNDER,	\
	     EARTHQUAKE, EARTH_POWER, DOUBLE_TEAM, REFLECT, X_SCISSOR,	\
	     FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST, ROCK_SLIDE,	\
	     SUBSTITUTE, CRUNCH, PLAY_ROUGH, SURF, STRENGTH
	; end
