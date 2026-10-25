	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db HEADBUTT, AMNESIA, REST, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, CLOSE_COMBAT, TOXIC, IRON_HEAD,	\
	     BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, SLUDGE_BOMB, SHADOW_BALL,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, WATERFALL, SEISMIC_TOSS,	\
	     AURA_SPHERE, SOLARBEAM, DRAGON_PULSE, THUNDERBOLT, THUNDER,	\
	     EARTHQUAKE, EARTH_POWER, PSYCHIC_M, FLASH_CANNON, DOUBLE_TEAM,	\
	     REFLECT, SELFDESTRUCT, X_SCISSOR, FIRE_BLAST, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE,	\
	     CRUNCH, PLAY_ROUGH, HYPER_VOICE, SURF, STRENGTH
	; end
