	db DEX_SCIZOR ; pokedex id

	db  70, 130, 100,  65,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/scizor.pic", 0, 1 ; sprite dimensions
	dw ScizorPicFront, ScizorPicBack

	db QUICK_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, ROOST, CLOSE_COMBAT, TOXIC, IRON_HEAD,	\
	     DOUBLE_EDGE, HYPER_BEAM, POISON_JAB, FLASH_CANNON, DOUBLE_TEAM,	\
	     X_SCISSOR, SWIFT, KNOCK_OFF, AIR_SLASH, REST,	\
	     SUBSTITUTE, POWER_GEM, CUT, NEWPICBANK
	; end
