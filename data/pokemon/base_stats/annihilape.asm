	db DEX_ANNIHILAPE ; pokedex id

	db 110, 115,  80,  90,  50,  90
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, GHOST ; type
	db 45 ; catch rate
	db 227 ; base exp

	INCBIN "gfx/pokemon/front/annihilape.pic", 0, 1 ; sprite dimensions
	dw AnnihilapePicFront, AnnihilapePicBack

	db SCRATCH, LEER, LOW_KICK, KARATE_CHOP ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SHADOW_BALL, HYPER_BEAM, WATERFALL, SEISMIC_TOSS, AURA_SPHERE,	\
	     THUNDERBOLT, THUNDER, EARTH_POWER, DIG, DOUBLE_TEAM,	\
	     X_SCISSOR, SWIFT, KNOCK_OFF, FOCUS_BLAST, REST,	\
	     ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE, CRUNCH, PLAY_ROUGH,	\
	     HYPER_VOICE, STRENGTH, NEWPICBANK2
	; end
