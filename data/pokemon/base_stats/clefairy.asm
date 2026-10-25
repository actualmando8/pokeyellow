	db DEX_CLEFAIRY ; pokedex id

	db  70,  45,  48,  35,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db POUND, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM,	\
	     BLIZZARD, SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST,	\
	     FIRE_BLAST, REST, THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK,	\
	     SUBSTITUTE, PLAY_ROUGH, STRENGTH, FLASH
	; end
