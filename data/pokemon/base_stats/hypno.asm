	db DEX_HYPNO ; pokedex id

	db  85,  73,  70,  67, 115, 115
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/hypno.pic", 0, 1 ; sprite dimensions
	dw HypnoPicFront, HypnoPicBack

	db POUND, HYPNOSIS, DISABLE, CONFUSION ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM,	\
	     SEISMIC_TOSS, PSYCHIC_M, DOUBLE_TEAM, REFLECT, DREAM_EATER,	\
	     REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE,	\
	     FLASH
	; end
