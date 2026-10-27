	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	db KARATE_CHOP, LOW_KICK, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, CLOSE_COMBAT, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     SEISMIC_TOSS, AURA_SPHERE, EARTHQUAKE, DIG, DOUBLE_TEAM,	\
	     X_SCISSOR, FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST,	\
	     ZEN_HEADBUTT, ROCK_SLIDE, SUBSTITUTE, STRENGTH, NEWPICBANK2
	; end
