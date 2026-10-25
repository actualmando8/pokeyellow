	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	db BUBBLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM,	\
	     BLIZZARD, WATERFALL, DOUBLE_TEAM, X_SCISSOR, KNOCK_OFF,	\
	     REST, SUBSTITUTE, CUT, SURF, STRENGTH
	; end
