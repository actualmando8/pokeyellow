	db DEX_ALAKAZAM ; pokedex id

	db  55,  50,  45, 120, 135, 135
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1 ; sprite dimensions
	dw AlakazamPicFront, AlakazamPicBack

	db TELEPORT, CONFUSION, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM,	\
	     SEISMIC_TOSS, AURA_SPHERE, DIG, PSYCHIC_M, ENERGY_BALL,	\
	     FLASH_CANNON, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     FOCUS_BLAST, AIR_SLASH, REST, THUNDER_WAVE, ZEN_HEADBUTT,	\
	     TRI_ATTACK, SUBSTITUTE, HYPER_VOICE, POWER_GEM, FLASH
	; end
