	db DEX_BUTTERFREE ; pokedex id

	db  60,  45,  50,  70,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db CONFUSION, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, HYPER_BEAM, GIGA_DRAIN,	\
	     SOLARBEAM, PSYCHIC_M, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     DAZZLING_GLEAM, MOONBLAST, SWIFT, AIR_SLASH, REST,	\
	     SUBSTITUTE, HYPER_VOICE, FLASH
	; end
