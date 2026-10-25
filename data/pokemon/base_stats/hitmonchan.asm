	db DEX_HITMONCHAN ; pokedex id

	db  50, 105,  79,  76,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1 ; sprite dimensions
	dw HitmonchanPicFront, HitmonchanPicBack

	db POUND, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SEISMIC_TOSS, AURA_SPHERE, DOUBLE_TEAM, X_SCISSOR, SWIFT,	\
	     KNOCK_OFF, FOCUS_BLAST, REST, ZEN_HEADBUTT, SUBSTITUTE,	\
	     CRUNCH, STRENGTH
	; end
