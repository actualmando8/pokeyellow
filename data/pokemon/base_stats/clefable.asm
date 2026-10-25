	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db SING, DOUBLESLAP, MINIMIZE, METRONOME ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT,	\
	     THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM,	\
	     MOONBLAST, FIRE_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT,	\
	     TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH, POWER_GEM, STRENGTH,	\
	     FLASH
	; end
