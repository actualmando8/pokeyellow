; Items a smart (AI_SMART / AI_BOSS) trainer of each class carries:
; the potion it heals with, whether it has a Full Heal, and its X item. The number of uses
; per Pokémon is still the first number in data/trainers/ai_pointers.asm.
MACRO ai_kit
	db \1, \2, \3 ; heal item, cures status (0 or 1), X item
ENDM

TrainerAIItemKits:
	table_width 3
	ai_kit 0, 0, 0 ; YOUNGSTER
	ai_kit 0, 0, 0 ; BUG_CATCHER
	ai_kit 0, 0, 0 ; LASS
	ai_kit 0, 0, 0 ; SAILOR
	ai_kit 0, 0, 0 ; JR_TRAINER_M
	ai_kit 0, 0, 0 ; JR_TRAINER_F
	ai_kit 0, 0, 0 ; POKEMANIAC
	ai_kit 0, 0, 0 ; SUPER_NERD
	ai_kit 0, 0, 0 ; HIKER
	ai_kit 0, 0, 0 ; BIKER
	ai_kit 0, 0, 0 ; BURGLAR
	ai_kit 0, 0, 0 ; ENGINEER
	ai_kit 0, 0, 0 ; UNUSED_JUGGLER
	ai_kit 0, 0, 0 ; FISHER
	ai_kit 0, 0, 0 ; SWIMMER
	ai_kit 0, 0, 0 ; CUE_BALL
	ai_kit 0, 0, 0 ; GAMBLER
	ai_kit 0, 0, 0 ; BEAUTY
	ai_kit 0, 0, X_SPECIAL ; PSYCHIC_TR
	ai_kit 0, 0, 0 ; ROCKER
	ai_kit 0, 0, 0 ; JUGGLER
	ai_kit 0, 0, 0 ; TAMER
	ai_kit 0, 0, 0 ; BIRD_KEEPER
	ai_kit 0, 0, X_ATTACK ; BLACKBELT
	ai_kit POTION, 0, 0 ; RIVAL1
	ai_kit HYPER_POTION, 1, 0 ; PROF_OAK
	ai_kit 0, 0, 0 ; CHIEF
	ai_kit 0, 0, 0 ; SCIENTIST
	ai_kit HYPER_POTION, 0, X_ATTACK ; GIOVANNI
	ai_kit SUPER_POTION, 0, 0 ; ROCKET
	ai_kit HYPER_POTION, 0, X_ATTACK ; COOLTRAINER_M
	ai_kit HYPER_POTION, 0, 0 ; COOLTRAINER_F
	ai_kit SUPER_POTION, 0, X_ATTACK ; BRUNO
	ai_kit 0, 1, 0 ; BROCK
	ai_kit 0, 0, X_DEFEND ; MISTY
	ai_kit 0, 0, X_SPEED ; LT_SURGE
	ai_kit SUPER_POTION, 0, 0 ; ERIKA
	ai_kit 0, 0, X_ATTACK ; KOGA
	ai_kit SUPER_POTION, 0, 0 ; BLAINE
	ai_kit 0, 0, X_SPECIAL ; SABRINA
	ai_kit 0, 0, 0 ; GENTLEMAN
	ai_kit SUPER_POTION, 0, 0 ; RIVAL2
	ai_kit FULL_RESTORE, 1, 0 ; RIVAL3
	ai_kit SUPER_POTION, 1, 0 ; LORELEI
	ai_kit 0, 0, 0 ; CHANNELER
	ai_kit SUPER_POTION, 1, 0 ; AGATHA
	ai_kit HYPER_POTION, 1, 0 ; LANCE
	assert_table_length NUM_TRAINERS
