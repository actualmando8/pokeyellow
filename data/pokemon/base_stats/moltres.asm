	db DEX_MOLTRES ; pokedex id

	db  90, 100,  90,  90, 125, 125
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

	db GUST, FIRE_SPIN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, FLAMETHROWER, DOUBLE_EDGE, HYPER_BEAM,	\
	     BRAVE_BIRD, DRAGON_PULSE, DOUBLE_TEAM, REFLECT, FIRE_BLAST,	\
	     SWIFT, KNOCK_OFF, AIR_SLASH, REST, SUBSTITUTE,	\
	     POWER_GEM, FLY, NEWPICBANK2
	; end
