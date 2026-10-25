	db DEX_FARFETCHD ; pokedex id

	db  52,  65,  55,  60,  58,  58
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1 ; sprite dimensions
	dw FarfetchdPicFront, FarfetchdPicBack

	db GUST, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, ROOST, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     BRAVE_BIRD, DOUBLE_TEAM, REFLECT, SWIFT, AIR_SLASH,	\
	     REST, SUBSTITUTE, HYPER_VOICE, CUT, FLY
	; end
