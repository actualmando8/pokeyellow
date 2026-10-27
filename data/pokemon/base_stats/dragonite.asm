	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 9 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	db WRAP, LEER, THUNDER_WAVE, AGILITY ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, DRAGON_CLAW, ROOST, CLOSE_COMBAT, TOXIC,	\
	     IRON_HEAD, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, BRAVE_BIRD, WATERFALL, DRAGON_PULSE,	\
	     THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, X_SCISSOR,	\
	     FIRE_BLAST, SWIFT, KNOCK_OFF, FOCUS_BLAST, AIR_SLASH,	\
	     REST, THUNDER_WAVE, ZEN_HEADBUTT, SUBSTITUTE, CRUNCH,	\
	     HYPER_VOICE, POWER_GEM, SURF, STRENGTH, NEWPICBANK2
	; end
