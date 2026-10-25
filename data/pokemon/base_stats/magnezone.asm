	db DEX_MAGNEZONE ; pokedex id

	db  70,  70, 115,  60, 130,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/magnezone.pic", 0, 1 ; sprite dimensions
	dw MagnezonePicFront, MagnezonePicBack

	db TACKLE, SONICBOOM, THUNDERSHOCK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, FLASH_CANNON, DOUBLE_TEAM, REFLECT, SWIFT,	\
	     REST, THUNDER_WAVE, SUBSTITUTE, POWER_GEM, FLASH,	\
	     NEWPICBANK
	; end
