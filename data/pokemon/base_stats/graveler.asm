	db DEX_GRAVELER ; pokedex id

	db  55,  95, 115,  35,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, DOUBLE_EDGE, SEISMIC_TOSS,	\
	     EARTHQUAKE, EARTH_POWER, DIG, DOUBLE_TEAM, SELFDESTRUCT,	\
	     FIRE_BLAST, KNOCK_OFF, REST, EXPLOSION, ROCK_SLIDE,	\
	     SUBSTITUTE, POWER_GEM, STRENGTH
	; end
