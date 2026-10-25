	db DEX_CUBONE ; pokedex id

	db  50,  50,  95,  35,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	db GROWL, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, SEISMIC_TOSS, EARTHQUAKE, EARTH_POWER, DIG,	\
	     DOUBLE_TEAM, FIRE_BLAST, REST, SUBSTITUTE, CRUNCH,	\
	     STRENGTH
	; end
