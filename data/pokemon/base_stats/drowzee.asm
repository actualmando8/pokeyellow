	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

	db POUND, HYPNOSIS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, SEISMIC_TOSS,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, DREAM_EATER, REST,	\
	     THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE, FLASH
	; end
