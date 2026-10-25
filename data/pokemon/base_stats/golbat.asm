	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  90,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, HYPER_BEAM,	\
	     BRAVE_BIRD, POISON_JAB, DOUBLE_TEAM, SWIFT, KNOCK_OFF,	\
	     AIR_SLASH, REST, SUBSTITUTE, CRUNCH, HYPER_VOICE
	; end
