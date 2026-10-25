	db DEX_JOLTEON ; pokedex id

	db  65,  65,  60, 130, 110, 110
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/jolteon.pic", 0, 1 ; sprite dimensions
	dw JolteonPicFront, JolteonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, THUNDERSHOCK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, FLASH_CANNON, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     MOONBLAST, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE,	\
	     CRUNCH, PLAY_ROUGH, POWER_GEM, FLASH
	; end
