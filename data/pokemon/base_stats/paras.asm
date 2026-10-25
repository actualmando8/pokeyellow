	db DEX_PARAS ; pokedex id

	db  35,  70,  55,  25,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, GIGA_DRAIN,	\
	     SOLARBEAM, DIG, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     X_SCISSOR, REST, SUBSTITUTE, CUT
	; end
