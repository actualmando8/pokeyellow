	db DEX_MAROWAK ; pokedex id

	db  60,  80, 110,  45,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

	db BONE_CLUB, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, SHADOW_BALL,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     REST, SUBSTITUTE, CRUNCH, STRENGTH
	; end
