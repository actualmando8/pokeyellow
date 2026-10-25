	db DEX_PRIMEAPE ; pokedex id

	db  65, 105,  60,  95,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SCRATCH, LEER, LOW_KICK, KARATE_CHOP ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     HYPER_BEAM, WATERFALL, SEISMIC_TOSS, AURA_SPHERE, THUNDERBOLT,	\
	     THUNDER, DIG, DOUBLE_TEAM, X_SCISSOR, SWIFT,	\
	     KNOCK_OFF, FOCUS_BLAST, REST, ZEN_HEADBUTT, ROCK_SLIDE,	\
	     SUBSTITUTE, CRUNCH, PLAY_ROUGH, HYPER_VOICE, STRENGTH
	; end
