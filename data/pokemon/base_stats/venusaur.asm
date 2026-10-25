	db DEX_VENUSAUR ; pokedex id

	db  80,  82,  83,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

	db TACKLE, GROWL, LEECH_SEED, VINE_WHIP ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB,	\
	     HYPER_BEAM, POISON_JAB, GIGA_DRAIN, SOLARBEAM, ENERGY_BALL,	\
	     DOUBLE_TEAM, REFLECT, KNOCK_OFF, REST, SUBSTITUTE,	\
	     CUT
	; end
