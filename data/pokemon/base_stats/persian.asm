	db DEX_PERSIAN ; pokedex id

	db  65,  70,  60, 115,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db SCRATCH, GROWL, BITE, SCREECH ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT,	\
	     THUNDER, DOUBLE_TEAM, X_SCISSOR, SWIFT, REST,	\
	     ZEN_HEADBUTT, SUBSTITUTE, CRUNCH, PLAY_ROUGH, HYPER_VOICE
	; end
