	db DEX_HITMONTOP ; pokedex id

	db  50,  95,  95,  70,  35, 110
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/hitmontop.pic", 0, 1 ; sprite dimensions
	dw HitmontopPicFront, HitmontopPicBack

	db POUND, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SEISMIC_TOSS, AURA_SPHERE, DOUBLE_TEAM, X_SCISSOR, SWIFT,	\
	     KNOCK_OFF, FOCUS_BLAST, REST, ZEN_HEADBUTT, SUBSTITUTE,	\
	     CRUNCH, STRENGTH, NEWPICBANK2
	; end
