	db DEX_ELECTABUZZ ; pokedex id

	db  65,  83,  57, 105,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SEISMIC_TOSS,	\
	     THUNDERBOLT, THUNDER, PSYCHIC_M, FLASH_CANNON, DOUBLE_TEAM,	\
	     REFLECT, SWIFT, KNOCK_OFF, FOCUS_BLAST, REST,	\
	     THUNDER_WAVE, SUBSTITUTE, STRENGTH, FLASH
	; end
