	db DEX_MAGBY ; pokedex id

	db  45,  75,  37,  83,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/magby.pic", 0, 1 ; sprite dimensions
	dw MagbyPicFront, MagbyPicBack

	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, HYPER_BEAM,	\
	     SEISMIC_TOSS, PSYCHIC_M, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     REST, SUBSTITUTE, STRENGTH, NEWPICBANK
	; end
