	db DEX_VENONAT ; pokedex id

	db  60,  55,  50,  45,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 190 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/front/venonat.pic", 0, 1 ; sprite dimensions
	dw VenonatPicFront, VenonatPicBack

	db TACKLE, DISABLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, POISON_JAB, SOLARBEAM,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, X_SCISSOR, REST,	\
	     SUBSTITUTE, FLASH
	; end
