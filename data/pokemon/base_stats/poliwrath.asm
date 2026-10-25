	db DEX_POLIWRATH ; pokedex id

	db  90,  85,  95,  70,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db HYPNOSIS, WATER_GUN, DOUBLESLAP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, WATERFALL, SEISMIC_TOSS,	\
	     AURA_SPHERE, EARTHQUAKE, PSYCHIC_M, DOUBLE_TEAM, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, ZEN_HEADBUTT, SUBSTITUTE, CRUNCH,	\
	     SURF, STRENGTH
	; end
