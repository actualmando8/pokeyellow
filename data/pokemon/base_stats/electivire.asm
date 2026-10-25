	db DEX_ELECTIVIRE ; pokedex id

	db  75, 123,  67,  95,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/electivire.pic", 0, 1 ; sprite dimensions
	dw ElectivirePicFront, ElectivirePicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, IRON_HEAD, BODY_SLAM,	\
	     FLAMETHROWER, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM, SEISMIC_TOSS,	\
	     AURA_SPHERE, DRAGON_PULSE, THUNDERBOLT, THUNDER, EARTH_POWER,	\
	     PSYCHIC_M, FLASH_CANNON, DOUBLE_TEAM, REFLECT, SWIFT,	\
	     KNOCK_OFF, FOCUS_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT,	\
	     SUBSTITUTE, CRUNCH, HYPER_VOICE, POWER_GEM, STRENGTH,	\
	     FLASH, NEWPICBANK
	; end
