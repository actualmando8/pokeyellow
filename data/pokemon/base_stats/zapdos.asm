	db DEX_ZAPDOS ; pokedex id

	db  90,  90,  85, 100, 125, 125
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/zapdos.pic", 0, 1 ; sprite dimensions
	dw ZapdosPicFront, ZapdosPicBack

	db THUNDERSHOCK, DRILL_PECK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, HYPER_BEAM, BRAVE_BIRD,	\
	     DRAGON_PULSE, THUNDERBOLT, THUNDER, FLASH_CANNON, DOUBLE_TEAM,	\
	     REFLECT, SWIFT, KNOCK_OFF, AIR_SLASH, REST,	\
	     THUNDER_WAVE, SUBSTITUTE, POWER_GEM, FLY, FLASH
	; end
