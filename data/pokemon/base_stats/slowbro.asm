	db DEX_SLOWBRO ; pokedex id

	db  95,  75, 110,  30,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db CONFUSION, DISABLE, HEADBUTT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE,	\
	     SLUDGE_BOMB, SHADOW_BALL, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, SEISMIC_TOSS, EARTHQUAKE, DIG, PSYCHIC_M,	\
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT, KNOCK_OFF,	\
	     REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE,	\
	     HYPER_VOICE, POWER_GEM, SURF, STRENGTH, FLASH
	; end
