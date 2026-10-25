	db DEX_ONIX ; pokedex id

	db  35,  45, 160,  70,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, DOUBLE_EDGE, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, SELFDESTRUCT, REST,	\
	     EXPLOSION, ROCK_SLIDE, SUBSTITUTE, CRUNCH, POWER_GEM,	\
	     STRENGTH
	; end
