	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130, 130
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db LICK, CONFUSE_RAY, NIGHT_SHADE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB,	\
	     SHADOW_BALL, HYPER_BEAM, POISON_JAB, SEISMIC_TOSS, AURA_SPHERE,	\
	     THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, SELFDESTRUCT,	\
	     FOCUS_BLAST, DREAM_EATER, REST, EXPLOSION, SUBSTITUTE,	\
	     STRENGTH
	; end
