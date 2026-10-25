	db DEX_SMOOCHUM ; pokedex id

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/front/smoochum.pic", 0, 1 ; sprite dimensions
	dw SmoochumPicFront, SmoochumPicBack

	db POUND, SING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, PSYCHIC_M, DOUBLE_TEAM,	\
	     REFLECT, DAZZLING_GLEAM, MOONBLAST, FOCUS_BLAST, AIR_SLASH,	\
	     REST, ZEN_HEADBUTT, SUBSTITUTE, HYPER_VOICE, NEWPICBANK2
	; end
