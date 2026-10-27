	db DEX_PIKACHU ; pokedex id

	db  35,  55,  30,  90,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SEISMIC_TOSS, THUNDERBOLT,	\
	     THUNDER, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, PLAY_ROUGH,	\
	     HYPER_VOICE, FLASH, SURF
	; end
