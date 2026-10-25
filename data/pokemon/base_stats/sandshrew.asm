	db DEX_SANDSHREW ; pokedex id

	db  50,  75,  85,  40,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SEISMIC_TOSS,	\
	     EARTHQUAKE, EARTH_POWER, DIG, DOUBLE_TEAM, SWIFT,	\
	     KNOCK_OFF, REST, ROCK_SLIDE, SUBSTITUTE, CUT,	\
	     STRENGTH
	; end
