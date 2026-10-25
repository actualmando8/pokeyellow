	db DEX_LAPRAS ; pokedex id

	db 130,  85,  80,  60,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db WATER_GUN, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, WATERFALL, AURA_SPHERE, SOLARBEAM,	\
	     DRAGON_PULSE, THUNDERBOLT, THUNDER, PSYCHIC_M, ENERGY_BALL,	\
	     FLASH_CANNON, DOUBLE_TEAM, REFLECT, KNOCK_OFF, FOCUS_BLAST,	\
	     REST, SUBSTITUTE, CRUNCH, HYPER_VOICE, POWER_GEM,	\
	     SURF, STRENGTH
	; end
