	db DEX_BELLOSSOM ; pokedex id

	db  75,  80,  85,  50,  90, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 221 ; base exp

	INCBIN "gfx/pokemon/front/bellossom.pic", 0, 1 ; sprite dimensions
	dw BellossomPicFront, BellossomPicBack

	db STUN_SPORE, SLEEP_POWDER, ACID, PETAL_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB,	\
	     HYPER_BEAM, GIGA_DRAIN, SOLARBEAM, ENERGY_BALL, DOUBLE_TEAM,	\
	     REFLECT, DAZZLING_GLEAM, MOONBLAST, KNOCK_OFF, REST,	\
	     SUBSTITUTE, CUT, NEWPICBANK
	; end
