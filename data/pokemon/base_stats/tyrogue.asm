	db DEX_TYROGUE ; pokedex id

	db  35,  35,  35,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/tyrogue.pic", 0, 1 ; sprite dimensions
	dw TyroguePicFront, TyroguePicBack

	db DOUBLE_KICK, MEDITATE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SEISMIC_TOSS,	\
	     AURA_SPHERE, DOUBLE_TEAM, X_SCISSOR, SWIFT, FOCUS_BLAST,	\
	     REST, SUBSTITUTE, STRENGTH, NEWPICBANK2
	; end
