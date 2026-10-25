	db DEX_FEAROW ; pokedex id

	db  65,  90,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db GUST, GROWL, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, HYPER_BEAM, BRAVE_BIRD,	\
	     DOUBLE_TEAM, SWIFT, KNOCK_OFF, AIR_SLASH, REST,	\
	     SUBSTITUTE, CRUNCH, HYPER_VOICE, FLY
	; end
