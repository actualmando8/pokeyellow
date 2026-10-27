	db DEX_ARTICUNO ; pokedex id

	db  90,  85, 100,  85, 125, 125
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/articuno.pic", 0, 1 ; sprite dimensions
	dw ArticunoPicFront, ArticunoPicBack

	db GUST, ICE_BEAM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, BRAVE_BIRD, DRAGON_PULSE, FLASH_CANNON, DOUBLE_TEAM,	\
	     REFLECT, SWIFT, KNOCK_OFF, AIR_SLASH, REST,	\
	     SUBSTITUTE, POWER_GEM, FLY, NEWPICBANK
	; end
