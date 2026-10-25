	db DEX_RHYHORN ; pokedex id

	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

	db HORN_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, THUNDERBOLT, THUNDER,	\
	     EARTHQUAKE, EARTH_POWER, DIG, DOUBLE_TEAM, FIRE_BLAST,	\
	     KNOCK_OFF, REST, ROCK_SLIDE, SUBSTITUTE, POWER_GEM,	\
	     STRENGTH
	; end
