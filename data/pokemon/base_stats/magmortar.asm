	db DEX_MAGMORTAR ; pokedex id

	db  75,  95,  67,  83, 125,  95
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/magmortar.pic", 0, 1 ; sprite dimensions
	dw MagmortarPicFront, MagmortarPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, IRON_HEAD, BODY_SLAM,	\
	     FLAMETHROWER, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM, SEISMIC_TOSS,	\
	     AURA_SPHERE, DRAGON_PULSE, EARTH_POWER, PSYCHIC_M, FLASH_CANNON,	\
	     DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST,	\
	     ZEN_HEADBUTT, SUBSTITUTE, CRUNCH, POWER_GEM, STRENGTH,	\
	     NEWPICBANK
	; end
