	db DEX_AERODACTYL ; pokedex id

	db  80, 105,  65, 130,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db WING_ATTACK, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, ROOST, TOXIC, FLAMETHROWER, DOUBLE_EDGE,	\
	     HYPER_BEAM, BRAVE_BIRD, WATERFALL, DRAGON_PULSE, DOUBLE_TEAM,	\
	     REFLECT, X_SCISSOR, FIRE_BLAST, SWIFT, KNOCK_OFF,	\
	     AIR_SLASH, REST, SUBSTITUTE, CRUNCH, POWER_GEM,	\
	     FLY
	; end
