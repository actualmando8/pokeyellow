	db DEX_GLACEON ; pokedex id

	db  65,  60, 110,  65, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/glaceon.pic", 0, 1 ; sprite dimensions
	dw GlaceonPicFront, GlaceonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, THUNDERSHOCK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, ENERGY_BALL, DOUBLE_TEAM, REFLECT, MOONBLAST,	\
	     SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, CRUNCH,	\
	     PLAY_ROUGH, POWER_GEM, FLASH, NEWPICBANK
	; end
