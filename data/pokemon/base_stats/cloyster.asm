	db DEX_CLOYSTER ; pokedex id

	db  50,  95, 180,  70,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/cloyster.pic", 0, 1 ; sprite dimensions
	dw CloysterPicFront, CloysterPicBack

	db WITHDRAW, SUPERSONIC, CLAMP, AURORA_BEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM,	\
	     WATERFALL, DOUBLE_TEAM, REFLECT, SELFDESTRUCT, SWIFT,	\
	     KNOCK_OFF, REST, EXPLOSION, TRI_ATTACK, SUBSTITUTE,	\
	     POWER_GEM, SURF, NEWPICBANK2
	; end
