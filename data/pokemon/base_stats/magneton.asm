	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120, 120
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db TACKLE, SONICBOOM, THUNDERSHOCK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, IRON_HEAD, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, FLASH_CANNON, DOUBLE_TEAM, REFLECT, SWIFT,	\
	     REST, THUNDER_WAVE, SUBSTITUTE, POWER_GEM, FLASH
	; end
