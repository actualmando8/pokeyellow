	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db TACKLE, WATER_GUN, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, DOUBLE_EDGE, SHADOW_BALL, ICE_BEAM, BLIZZARD,	\
	     HYPER_BEAM, WATERFALL, AURA_SPHERE, THUNDERBOLT, THUNDER,	\
	     PSYCHIC_M, ENERGY_BALL, FLASH_CANNON, DOUBLE_TEAM, REFLECT,	\
	     DAZZLING_GLEAM, MOONBLAST, SWIFT, KNOCK_OFF, REST,	\
	     THUNDER_WAVE, ZEN_HEADBUTT, TRI_ATTACK, SUBSTITUTE, POWER_GEM,	\
	     SURF, FLASH
	; end
