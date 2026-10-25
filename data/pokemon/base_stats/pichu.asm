	db DEX_PICHU ; pokedex id

	db  20,  40,  15,  60,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 41 ; base exp

	INCBIN "gfx/pokemon/front/pichu.pic", 0, 1 ; sprite dimensions
	dw PichuPicFront, PichuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SEISMIC_TOSS, THUNDERBOLT,	\
	     THUNDER, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, PLAY_ROUGH,	\
	     FLASH, NEWPICBANK
	; end
