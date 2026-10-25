	db DEX_PORYGON ; pokedex id

	db  65,  60,  70,  40,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygon.pic", 0, 1 ; sprite dimensions
	dw PorygonPicFront, PorygonPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, FLASH_CANNON,	\
	     DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE,	\
	     TRI_ATTACK, SUBSTITUTE, HYPER_VOICE, FLASH
	; end
