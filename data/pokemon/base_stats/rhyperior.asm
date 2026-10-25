	db DEX_RHYPERIOR ; pokedex id

	db 115, 140, 130,  40,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/rhyperior.pic", 0, 1 ; sprite dimensions
	dw RhyperiorPicFront, RhyperiorPicBack

	db HORN_ATTACK, STOMP, TAIL_WHIP, FURY_ATTACK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, CLOSE_COMBAT, TOXIC, IRON_HEAD,	\
	     BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, SEISMIC_TOSS, THUNDERBOLT, THUNDER, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE,	\
	     CRUNCH, POWER_GEM, SURF, STRENGTH, NEWPICBANK
	; end
