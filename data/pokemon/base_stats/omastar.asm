	db DEX_OMASTAR ; pokedex id

	db  70,  60, 125,  55, 115, 115
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1 ; sprite dimensions
	dw OmastarPicFront, OmastarPicBack

	db WATER_GUN, WITHDRAW, HORN_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, WATERFALL, SEISMIC_TOSS, FLASH_CANNON, DOUBLE_TEAM,	\
	     REFLECT, REST, SUBSTITUTE, POWER_GEM, SURF
	; end
