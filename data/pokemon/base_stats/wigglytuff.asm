	db DEX_WIGGLYTUFF ; pokedex id

	db 140,  70,  45,  45,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 50 ; catch rate
	db 109 ; base exp

	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1 ; sprite dimensions
	dw WigglytuffPicFront, WigglytuffPicBack

	db SING, DISABLE, DEFENSE_CURL, DOUBLESLAP ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT,	\
	     THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     MOONBLAST, FIRE_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT,	\
	     TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH, STRENGTH, FLASH
	; end
