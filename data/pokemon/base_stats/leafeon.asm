	db DEX_LEAFEON ; pokedex id

	db  65, 110, 130,  95,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, THUNDERSHOCK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, GIGA_DRAIN,	\
	     THUNDERBOLT, THUNDER, ENERGY_BALL, DOUBLE_TEAM, REFLECT,	\
	     MOONBLAST, SWIFT, KNOCK_OFF, REST, THUNDER_WAVE,	\
	     SUBSTITUTE, CRUNCH, PLAY_ROUGH, FLASH, NEWPICBANK
	; end
