	db DEX_ARCANINE ; pokedex id

	db  90, 110,  80,  95,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

	db ROAR, EMBER, LEER, TAKE_DOWN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE,	\
	     HYPER_BEAM, DIG, DOUBLE_TEAM, REFLECT, FIRE_BLAST,	\
	     SWIFT, KNOCK_OFF, FOCUS_BLAST, REST, ZEN_HEADBUTT,	\
	     SUBSTITUTE, CRUNCH, HYPER_VOICE, POWER_GEM
	; end
