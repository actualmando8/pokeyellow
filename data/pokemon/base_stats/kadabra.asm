	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120, 120
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

	db TELEPORT, CONFUSION, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, SEISMIC_TOSS,	\
	     AURA_SPHERE, DIG, PSYCHIC_M, DOUBLE_TEAM, REFLECT,	\
	     DAZZLING_GLEAM, MOONBLAST, FOCUS_BLAST, AIR_SLASH, REST,	\
	     THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE, HYPER_VOICE,	\
	     FLASH
	; end
