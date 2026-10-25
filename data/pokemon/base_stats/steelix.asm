	db DEX_STEELIX ; pokedex id

	db  75,  85, 200,  30,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/steelix.pic", 0, 1 ; sprite dimensions
	dw SteelixPicFront, SteelixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, DOUBLE_EDGE, EARTHQUAKE,	\
	     EARTH_POWER, DIG, FLASH_CANNON, DOUBLE_TEAM, SELFDESTRUCT,	\
	     KNOCK_OFF, REST, EXPLOSION, ROCK_SLIDE, SUBSTITUTE,	\
	     CRUNCH, POWER_GEM, STRENGTH, NEWPICBANK
	; end
