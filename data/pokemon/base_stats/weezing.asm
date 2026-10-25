	db DEX_WEEZING ; pokedex id

	db  65,  90, 120,  60,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

	db TACKLE, SMOG, SLUDGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, FLAMETHROWER, SLUDGE_BOMB, SHADOW_BALL, HYPER_BEAM,	\
	     POISON_JAB, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SELFDESTRUCT,	\
	     FIRE_BLAST, KNOCK_OFF, REST, EXPLOSION, SUBSTITUTE,	\
	     HYPER_VOICE
	; end
