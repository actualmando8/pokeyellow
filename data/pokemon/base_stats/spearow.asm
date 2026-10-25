	db DEX_SPEAROW ; pokedex id

	db  40,  60,  30,  70,  31,  31
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

	db GUST, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, DOUBLE_EDGE, BRAVE_BIRD, DOUBLE_TEAM,	\
	     SWIFT, AIR_SLASH, REST, SUBSTITUTE, FLY
	; end
