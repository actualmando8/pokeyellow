	db DEX_SLOWKING ; pokedex id

	db  95,  75,  80,  30, 100, 110
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 70 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowking.pic", 0, 1 ; sprite dimensions
	dw SlowkingPicFront, SlowkingPicBack

	db CONFUSION, DISABLE, HEADBUTT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE,	\
	     SLUDGE_BOMB, SHADOW_BALL, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, SEISMIC_TOSS, AURA_SPHERE, GIGA_DRAIN, DRAGON_PULSE,	\
	     EARTHQUAKE, DIG, PSYCHIC_M, ENERGY_BALL, DOUBLE_TEAM,	\
	     REFLECT, DAZZLING_GLEAM, FIRE_BLAST, SWIFT, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK,	\
	     SUBSTITUTE, HYPER_VOICE, POWER_GEM, SURF, STRENGTH,	\
	     FLASH, NEWPICBANK
	; end
