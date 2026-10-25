	db DEX_EEVEE ; pokedex id

	db  55,  55,  50,  55,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/eevee.pic", 0, 1 ; sprite dimensions
	dw EeveePicFront, EeveePicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, DOUBLE_TEAM, REFLECT,	\
	     MOONBLAST, SWIFT, REST, SUBSTITUTE, CRUNCH,	\
	     PLAY_ROUGH, HYPER_VOICE
	; end
