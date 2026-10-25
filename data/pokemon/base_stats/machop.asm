	db DEX_MACHOP ; pokedex id

	db  70,  80,  50,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/machop.pic", 0, 1 ; sprite dimensions
	dw MachopPicFront, MachopPicBack

	db KARATE_CHOP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SEISMIC_TOSS, AURA_SPHERE, EARTHQUAKE, DIG, DOUBLE_TEAM,	\
	     FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST, ZEN_HEADBUTT,	\
	     ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end
