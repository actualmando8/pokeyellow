	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db HORN_ATTACK, STOMP, TAIL_WHIP, FURY_ATTACK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, CLOSE_COMBAT, TOXIC, IRON_HEAD,	\
	     BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, SEISMIC_TOSS, THUNDERBOLT, THUNDER, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE,	\
	     CRUNCH, POWER_GEM, SURF, STRENGTH
	; end
