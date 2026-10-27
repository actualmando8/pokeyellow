	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 100,  90,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SEISMIC_TOSS,	\
	     THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     MOONBLAST, SWIFT, KNOCK_OFF, REST, THUNDER_WAVE,	\
	     SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE, FLASH, SURF
	; end
