	db DEX_DRAGONAIR ; pokedex id

	db  61,  84,  65,  70,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 27 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db WRAP, LEER, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER,	\
	     DOUBLE_EDGE, ICE_BEAM, BLIZZARD, DRAGON_PULSE, THUNDERBOLT,	\
	     THUNDER, DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT,	\
	     KNOCK_OFF, REST, THUNDER_WAVE, ZEN_HEADBUTT, SUBSTITUTE,	\
	     SURF
	; end
