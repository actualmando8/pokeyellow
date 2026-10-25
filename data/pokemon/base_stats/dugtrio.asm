	db DEX_DUGTRIO ; pokedex id

	db  35,  80,  50, 120,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db SCRATCH, GROWL, DIG, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, EARTHQUAKE,	\
	     EARTH_POWER, DIG, DOUBLE_TEAM, KNOCK_OFF, REST,	\
	     ROCK_SLIDE, SUBSTITUTE, CUT
	; end
