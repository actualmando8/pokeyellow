	db DEX_LICKITUNG ; pokedex id

	db  90,  55,  75,  30,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db WRAP, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, THUNDERBOLT,	\
	     THUNDER, EARTHQUAKE, DOUBLE_TEAM, FIRE_BLAST, REST,	\
	     ZEN_HEADBUTT, SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE, CUT,	\
	     SURF, STRENGTH
	; end
