	db DEX_MUNCHLAX ; pokedex id

	db 135,  85,  40,   5,  40,  85
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/munchlax.pic", 0, 1 ; sprite dimensions
	dw MunchlaxPicFront, MunchlaxPicBack

	db HEADBUTT, AMNESIA, REST, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, IRON_HEAD, BODY_SLAM,	\
	     FLAMETHROWER, DOUBLE_EDGE, SLUDGE_BOMB, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT,	\
	     THUNDER, EARTHQUAKE, EARTH_POWER, PSYCHIC_M, DOUBLE_TEAM,	\
	     REFLECT, SELFDESTRUCT, FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST,	\
	     REST, ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE, CRUNCH,	\
	     PLAY_ROUGH, SURF, STRENGTH, NEWPICBANK
	; end
