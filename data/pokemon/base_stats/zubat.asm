	db DEX_ZUBAT ; pokedex id

	db  40,  45,  35,  55,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db LEECH_LIFE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, POISON_JAB,	\
	     DOUBLE_TEAM, SWIFT, AIR_SLASH, REST, SUBSTITUTE
	; end
