	db DEX_DEWGONG ; pokedex id

	db  90,  70,  80,  70,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

	db HEADBUTT, GROWL, AURORA_BEAM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, WATERFALL, FLASH_CANNON, DOUBLE_TEAM,	\
	     REST, SUBSTITUTE, CRUNCH, HYPER_VOICE, SURF,	\
	     STRENGTH
	; end
