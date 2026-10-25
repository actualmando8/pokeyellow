	db DEX_GOLEM ; pokedex id

	db  80, 110, 130,  45,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE,	\
	     HYPER_BEAM, SEISMIC_TOSS, EARTHQUAKE, EARTH_POWER, DIG,	\
	     DOUBLE_TEAM, SELFDESTRUCT, FIRE_BLAST, KNOCK_OFF, REST,	\
	     EXPLOSION, ROCK_SLIDE, SUBSTITUTE, POWER_GEM, STRENGTH
	; end
