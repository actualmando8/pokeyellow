	db DEX_MR_MIME ; pokedex id

	db  40,  45,  65,  90, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db CONFUSION, BARRIER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM,	\
	     SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST, FOCUS_BLAST,	\
	     REST, THUNDER_WAVE, ZEN_HEADBUTT, SUBSTITUTE, PLAY_ROUGH,	\
	     HYPER_VOICE, FLASH
	; end
