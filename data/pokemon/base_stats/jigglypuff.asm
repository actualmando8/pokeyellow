	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db SING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     FIRE_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK,	\
	     SUBSTITUTE, PLAY_ROUGH, STRENGTH, FLASH
	; end
