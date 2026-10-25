	db DEX_MACHAMP ; pokedex id

	db  90, 130,  80,  55,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

	db KARATE_CHOP, LOW_KICK, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     HYPER_BEAM, WATERFALL, SEISMIC_TOSS, AURA_SPHERE, EARTHQUAKE,	\
	     DIG, DOUBLE_TEAM, X_SCISSOR, FIRE_BLAST, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE,	\
	     STRENGTH
	; end
