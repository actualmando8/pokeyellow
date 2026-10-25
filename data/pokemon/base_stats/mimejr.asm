	db DEX_MIME_JR ; pokedex id

	db  20,  25,  45,  60,  70,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 145 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/mimejr.pic", 0, 1 ; sprite dimensions
	dw MimeJrPicFront, MimeJrPicBack

	db CONFUSION, BARRIER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, HYPER_BEAM,	\
	     SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST, REST,	\
	     THUNDER_WAVE, ZEN_HEADBUTT, SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE,	\
	     FLASH, NEWPICBANK
	; end
