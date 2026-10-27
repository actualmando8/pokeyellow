	db DEX_CROBAT ; pokedex id

	db  85,  90,  80, 130,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/crobat.pic", 0, 1 ; sprite dimensions
	dw CrobatPicFront, CrobatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, HYPER_BEAM,	\
	     BRAVE_BIRD, POISON_JAB, DOUBLE_TEAM, SWIFT, KNOCK_OFF,	\
	     AIR_SLASH, REST, SUBSTITUTE, CRUNCH, HYPER_VOICE,	\
	     NEWPICBANK2
	; end
