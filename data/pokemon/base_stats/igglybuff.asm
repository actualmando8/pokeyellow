	db DEX_IGGLYBUFF ; pokedex id

	db  90,  30,  15,  15,  40,  20
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 39 ; base exp

	INCBIN "gfx/pokemon/front/igglybuff.pic", 0, 1 ; sprite dimensions
	dw IgglybuffPicFront, IgglybuffPicBack

	db SING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST, FIRE_BLAST,	\
	     REST, THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH,	\
	     STRENGTH, FLASH, NEWPICBANK2
	; end
