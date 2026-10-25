	db DEX_GYARADOS ; pokedex id

	db  95, 125,  79,  81, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, ROOST, TOXIC, BODY_SLAM, FLAMETHROWER,	\
	     DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, BRAVE_BIRD,	\
	     WATERFALL, DRAGON_PULSE, THUNDERBOLT, THUNDER, DOUBLE_TEAM,	\
	     REFLECT, X_SCISSOR, FIRE_BLAST, KNOCK_OFF, AIR_SLASH,	\
	     REST, SUBSTITUTE, CRUNCH, HYPER_VOICE, SURF,	\
	     STRENGTH
	; end
