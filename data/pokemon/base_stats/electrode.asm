	db DEX_ELECTRODE ; pokedex id

	db  60,  50,  70, 140,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	db TACKLE, SCREECH, SONICBOOM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, SLUDGE_BOMB, SHADOW_BALL, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, FLASH_CANNON, DOUBLE_TEAM, REFLECT, SELFDESTRUCT,	\
	     SWIFT, REST, THUNDER_WAVE, EXPLOSION, SUBSTITUTE,	\
	     HYPER_VOICE, POWER_GEM, FLASH
	; end
