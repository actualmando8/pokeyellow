	db DEX_CLEFFA ; pokedex id

	db  50,  25,  28,  15,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 37 ; base exp

	INCBIN "gfx/pokemon/front/cleffa.pic", 0, 1 ; sprite dimensions
	dw CleffaPicFront, CleffaPicBack

	db POUND, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     SEISMIC_TOSS, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M,	\
	     DOUBLE_TEAM, REFLECT, DAZZLING_GLEAM, MOONBLAST, FIRE_BLAST,	\
	     REST, THUNDER_WAVE, TRI_ATTACK, SUBSTITUTE, PLAY_ROUGH,	\
	     STRENGTH, FLASH, NEWPICBANK2
	; end
