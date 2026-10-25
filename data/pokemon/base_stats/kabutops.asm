	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 105,  80,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

	db SCRATCH, HARDEN, ABSORB, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, WATERFALL, SEISMIC_TOSS,	\
	     FLASH_CANNON, DOUBLE_TEAM, REFLECT, X_SCISSOR, KNOCK_OFF,	\
	     REST, SUBSTITUTE, POWER_GEM, CUT, SURF
	; end
