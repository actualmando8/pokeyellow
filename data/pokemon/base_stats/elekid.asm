	db DEX_ELEKID ; pokedex id

	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/elekid.pic", 0, 1 ; sprite dimensions
	dw ElekidPicFront, ElekidPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SEISMIC_TOSS,	\
	     THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT,	\
	     SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH,	\
	     FLASH, NEWPICBANK
	; end
