	db DEX_GROWLITHE ; pokedex id

	db  55,  70,  45,  60,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/growlithe.pic", 0, 1 ; sprite dimensions
	dw GrowlithePicFront, GrowlithePicBack

	db BITE, ROAR, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, DOUBLE_EDGE, DIG,	\
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT, REST,	\
	     ZEN_HEADBUTT, SUBSTITUTE, CRUNCH
	; end
