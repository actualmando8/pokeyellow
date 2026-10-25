	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 100,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	db GUST, GROWL, FURY_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm ROOST, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM,	\
	     BRAVE_BIRD, DOUBLE_TEAM, REFLECT, KNOCK_OFF, AIR_SLASH,	\
	     REST, TRI_ATTACK, SUBSTITUTE, HYPER_VOICE, FLY
	; end
