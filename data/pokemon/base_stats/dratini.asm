	db DEX_DRATINI ; pokedex id

	db  41,  64,  45,  50,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

	db WRAP, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW, TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER,	\
	     DOUBLE_EDGE, ICE_BEAM, BLIZZARD, DRAGON_PULSE, THUNDERBOLT,	\
	     THUNDER, DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT,	\
	     REST, THUNDER_WAVE, ZEN_HEADBUTT, SUBSTITUTE, SURF
	; end
