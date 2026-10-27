	db DEX_PORYGON2 ; pokedex id

	db  85,  80,  90,  60, 105,  95
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp

	INCBIN "gfx/pokemon/front/porygon2.pic", 0, 1 ; sprite dimensions
	dw Porygon2PicFront, Porygon2PicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, FLASH_CANNON,	\
	     DOUBLE_TEAM, REFLECT, SWIFT, KNOCK_OFF, REST,	\
	     THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, HYPER_VOICE, POWER_GEM,	\
	     FLASH, NEWPICBANK2
	; end
