	db DEX_PORYGON_Z ; pokedex id

	db  85,  80,  70,  90, 135,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 241 ; base exp

	INCBIN "gfx/pokemon/front/porygonz.pic", 0, 1 ; sprite dimensions
	dw PorygonZPicFront, PorygonZPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, FLAMETHROWER, DOUBLE_EDGE, SHADOW_BALL,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, FLASH_CANNON, DOUBLE_TEAM, REFLECT, SWIFT,	\
	     KNOCK_OFF, REST, THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE,	\
	     HYPER_VOICE, POWER_GEM, FLASH, NEWPICBANK
	; end
