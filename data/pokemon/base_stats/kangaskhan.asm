	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db POUND, RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, IRON_HEAD, BODY_SLAM,	\
	     FLAMETHROWER, DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, SEISMIC_TOSS, THUNDERBOLT, THUNDER, EARTHQUAKE,	\
	     EARTH_POWER, DOUBLE_TEAM, X_SCISSOR, FIRE_BLAST, KNOCK_OFF,	\
	     REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE, CRUNCH,	\
	     PLAY_ROUGH, SURF, STRENGTH
	; end
