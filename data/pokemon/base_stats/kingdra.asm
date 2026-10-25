	db DEX_KINGDRA ; pokedex id

	db  75,  95,  95,  85,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/kingdra.pic", 0, 1 ; sprite dimensions
	dw KingdraPicFront, KingdraPicBack

	db BUBBLE, SMOKESCREEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, TOXIC, IRON_HEAD, DOUBLE_EDGE, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, WATERFALL, DRAGON_PULSE, ENERGY_BALL,	\
	     DOUBLE_TEAM, SWIFT, KNOCK_OFF, REST, SUBSTITUTE,	\
	     POWER_GEM, SURF, NEWPICBANK
	; end
