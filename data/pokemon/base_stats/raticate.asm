	db DEX_RATICATE ; pokedex id

	db  55,  81,  60,  97,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, THUNDERBOLT, THUNDER, DIG, DOUBLE_TEAM,	\
	     SWIFT, KNOCK_OFF, REST, SUBSTITUTE, CRUNCH
	; end
