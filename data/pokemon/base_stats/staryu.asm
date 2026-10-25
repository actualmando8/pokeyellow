	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, THUNDERBOLT,	\
	     THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     SWIFT, REST, THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE,	\
	     POWER_GEM, SURF, FLASH
	; end
