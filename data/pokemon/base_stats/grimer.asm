	db DEX_GRIMER ; pokedex id

	db  80,  80,  50,  25,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/grimer.pic", 0, 1 ; sprite dimensions
	dw GrimerPicFront, GrimerPicBack

	db POUND, DISABLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, FLAMETHROWER, SLUDGE_BOMB, SHADOW_BALL,	\
	     POISON_JAB, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SELFDESTRUCT,	\
	     FIRE_BLAST, KNOCK_OFF, REST, EXPLOSION, SUBSTITUTE
	; end
