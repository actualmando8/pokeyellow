	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CLOSE_COMBAT, TOXIC, IRON_HEAD, BODY_SLAM, FLAMETHROWER,	\
	     DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, WATERFALL,	\
	     THUNDERBOLT, THUNDER, EARTHQUAKE, EARTH_POWER, DOUBLE_TEAM,	\
	     X_SCISSOR, FIRE_BLAST, KNOCK_OFF, FOCUS_BLAST, REST,	\
	     ZEN_HEADBUTT, SUBSTITUTE, CRUNCH, PLAY_ROUGH, HYPER_VOICE,	\
	     STRENGTH
	; end
