	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     WATERFALL, SEISMIC_TOSS, DIG, ENERGY_BALL, DOUBLE_TEAM,	\
	     SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end
