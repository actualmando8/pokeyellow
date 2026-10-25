	db DEX_BEEDRILL ; pokedex id

	db  65,  80,  40,  75,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db FURY_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, HYPER_BEAM,	\
	     POISON_JAB, DOUBLE_TEAM, REFLECT, X_SCISSOR, SWIFT,	\
	     KNOCK_OFF, AIR_SLASH, REST, SUBSTITUTE, CUT
	; end
