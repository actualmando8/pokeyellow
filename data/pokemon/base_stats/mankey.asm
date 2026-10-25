	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SEISMIC_TOSS, AURA_SPHERE, THUNDERBOLT, THUNDER, DIG,	\
	     DOUBLE_TEAM, X_SCISSOR, SWIFT, KNOCK_OFF, FOCUS_BLAST,	\
	     REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE, PLAY_ROUGH,	\
	     STRENGTH
	; end
