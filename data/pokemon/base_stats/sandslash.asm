	db DEX_SANDSLASH ; pokedex id

	db  75, 100, 110,  65,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1 ; sprite dimensions
	dw SandslashPicFront, SandslashPicBack

	db SCRATCH, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM,	\
	     SEISMIC_TOSS, EARTHQUAKE, EARTH_POWER, DIG, DOUBLE_TEAM,	\
	     X_SCISSOR, SWIFT, KNOCK_OFF, REST, ROCK_SLIDE,	\
	     SUBSTITUTE, CRUNCH, CUT, STRENGTH
	; end
