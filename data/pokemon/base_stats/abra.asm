	db DEX_ABRA ; pokedex id

	db  25,  20,  15,  90, 105, 105
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/abra.pic", 0, 1 ; sprite dimensions
	dw AbraPicFront, AbraPicBack

	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, SEISMIC_TOSS,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     AIR_SLASH, REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK,	\
	     SUBSTITUTE, HYPER_VOICE, FLASH
	; end
