	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  93,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, HYPER_BEAM,	\
	     SEISMIC_TOSS, PSYCHIC_M, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     FOCUS_BLAST, REST, SUBSTITUTE, STRENGTH
	; end
