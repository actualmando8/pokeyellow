	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

	db GUST, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, BODY_SLAM, DOUBLE_EDGE, BRAVE_BIRD,	\
	     DOUBLE_TEAM, REFLECT, KNOCK_OFF, AIR_SLASH, REST,	\
	     TRI_ATTACK, SUBSTITUTE, FLY
	; end
