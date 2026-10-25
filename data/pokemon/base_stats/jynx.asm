	db DEX_JYNX ; pokedex id

	db  65,  50,  35,  95,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	db POUND, SING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, PSYCHIC_M, DOUBLE_TEAM,	\
	     REFLECT, DAZZLING_GLEAM, MOONBLAST, FOCUS_BLAST, AIR_SLASH,	\
	     REST, ZEN_HEADBUTT, SUBSTITUTE, HYPER_VOICE
	; end
