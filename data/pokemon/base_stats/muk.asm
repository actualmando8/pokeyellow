	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

	db POUND, DISABLE, POISON_GAS, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, SLUDGE_BOMB, SHADOW_BALL,	\
	     HYPER_BEAM, POISON_JAB, THUNDERBOLT, THUNDER, EARTH_POWER,	\
	     DOUBLE_TEAM, SELFDESTRUCT, FIRE_BLAST, KNOCK_OFF, REST,	\
	     EXPLOSION, SUBSTITUTE, HYPER_VOICE
	; end
