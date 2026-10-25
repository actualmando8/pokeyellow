	db DEX_UMBREON ; pokedex id

	db  95,  65, 110,  65,  60, 130
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/umbreon.pic", 0, 1 ; sprite dimensions
	dw UmbreonPicFront, UmbreonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, GIGA_DRAIN, DOUBLE_TEAM, REFLECT,	\
	     DAZZLING_GLEAM, MOONBLAST, SWIFT, KNOCK_OFF, REST,	\
	     SUBSTITUTE, CRUNCH, PLAY_ROUGH, POWER_GEM, SURF,	\
	     NEWPICBANK
	; end
