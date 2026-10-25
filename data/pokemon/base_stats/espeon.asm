	db DEX_ESPEON ; pokedex id

	db  65,  65,  60, 110, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/espeon.pic", 0, 1 ; sprite dimensions
	dw EspeonPicFront, EspeonPicBack

	db TELEPORT, CONFUSION, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, SEISMIC_TOSS,	\
	     AURA_SPHERE, GIGA_DRAIN, DIG, PSYCHIC_M, ENERGY_BALL,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST, REST,	\
	     THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE, CRUNCH,	\
	     PLAY_ROUGH, POWER_GEM, FLASH, NEWPICBANK
	; end
