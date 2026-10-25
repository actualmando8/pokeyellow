	db DEX_LICKILICKY ; pokedex id

	db 110,  85,  95,  50,  80,  95
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/lickilicky.pic", 0, 1 ; sprite dimensions
	dw LickilickyPicFront, LickilickyPicBack

	db WRAP, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE,	\
	     ICE_BEAM, BLIZZARD, HYPER_BEAM, SEISMIC_TOSS, THUNDERBOLT,	\
	     THUNDER, EARTHQUAKE, DOUBLE_TEAM, FIRE_BLAST, KNOCK_OFF,	\
	     REST, ZEN_HEADBUTT, SUBSTITUTE, PLAY_ROUGH, HYPER_VOICE,	\
	     CUT, SURF, STRENGTH, NEWPICBANK
	; end
