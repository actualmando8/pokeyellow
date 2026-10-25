	db DEX_NIDORAN_M ; pokedex id

	db  46,  57,  40,  50,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, BLIZZARD,	\
	     POISON_JAB, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT,	\
	     REST, SUBSTITUTE
	; end
