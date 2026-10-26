; AI tier of every trainer class (see engine/battle/trainer_ai.asm)
; AI_BASIC:  avoids pointless moves, uses the class's old item routine
; AI_SMART:  picks the best-damage move most of the time, handles status and setup moves sensibly,
;            heals and cures, can switch away from a bad matchup and chooses its next mon
; AI_BOSS:   the same but never slips: always plays the best option it sees
; The tier is fixed per class (or per trainer, see the overrides below). It does NOT depend on badges.
DEF AI_BASIC EQU 0
DEF AI_SMART EQU 1
DEF AI_BOSS  EQU 2

TrainerAITiers:
	table_width 1
	db AI_BASIC ; YOUNGSTER
	db AI_BASIC ; BUG_CATCHER
	db AI_BASIC ; LASS
	db AI_BASIC ; SAILOR
	db AI_BASIC ; JR_TRAINER_M
	db AI_BASIC ; JR_TRAINER_F
	db AI_BASIC ; POKEMANIAC
	db AI_BASIC ; SUPER_NERD
	db AI_BASIC ; HIKER
	db AI_BASIC ; BIKER
	db AI_BASIC ; BURGLAR
	db AI_BASIC ; ENGINEER
	db AI_BASIC ; UNUSED_JUGGLER
	db AI_BASIC ; FISHER
	db AI_BASIC ; SWIMMER
	db AI_BASIC ; CUE_BALL
	db AI_BASIC ; GAMBLER
	db AI_BASIC ; BEAUTY
	db AI_SMART ; PSYCHIC_TR
	db AI_BASIC ; ROCKER
	db AI_BASIC ; JUGGLER
	db AI_BASIC ; TAMER
	db AI_BASIC ; BIRD_KEEPER
	db AI_SMART ; BLACKBELT
	db AI_SMART ; RIVAL1
	db AI_BOSS  ; PROF_OAK
	db AI_BASIC ; CHIEF
	db AI_BASIC ; SCIENTIST
	db AI_BOSS  ; GIOVANNI
	db AI_BASIC ; ROCKET
	db AI_SMART ; COOLTRAINER_M
	db AI_SMART ; COOLTRAINER_F
	db AI_BOSS  ; BRUNO
	db AI_BOSS  ; BROCK
	db AI_BOSS  ; MISTY
	db AI_BOSS  ; LT_SURGE
	db AI_BOSS  ; ERIKA
	db AI_BOSS  ; KOGA
	db AI_BOSS  ; BLAINE
	db AI_BOSS  ; SABRINA
	db AI_SMART ; GENTLEMAN
	db AI_BOSS  ; RIVAL2
	db AI_BOSS  ; RIVAL3
	db AI_BOSS  ; LORELEI
	db AI_BASIC ; CHANNELER
	db AI_BOSS  ; AGATHA
	db AI_BOSS  ; LANCE
	assert_table_length NUM_TRAINERS

; individual trainers that differ from their class: trainer class, trainer number (1 = first entry
; of that class in data/trainers/parties.asm), tier
TrainerAITierOverrides:
	db POKEMANIAC, 6, AI_SMART ; Victory Road 2F
	db JUGGLER, 2, AI_SMART ; Victory Road 2F
	db JUGGLER, 5, AI_BOSS ; Victory Road 2F
	db TAMER, 5, AI_SMART ; Victory Road 2F
	db BLACKBELT, 9, AI_BOSS ; Victory Road 2F
	db ROCKET, 23, AI_SMART ; Silph Co. 2F
	db ROCKET, 24, AI_SMART ; Silph Co. 2F
	db ROCKET, 25, AI_SMART ; Silph Co. 3F
	db ROCKET, 26, AI_SMART ; Silph Co. 4F
	db ROCKET, 27, AI_SMART ; Silph Co. 4F
	db ROCKET, 28, AI_SMART ; Silph Co. 5F
	db ROCKET, 29, AI_SMART ; Silph Co. 5F
	db ROCKET, 30, AI_SMART ; Silph Co. 6F
	db ROCKET, 31, AI_SMART ; Silph Co. 6F
	db ROCKET, 32, AI_SMART ; Silph Co. 7F
	db ROCKET, 33, AI_SMART ; Silph Co. 7F
	db ROCKET, 34, AI_SMART ; Silph Co. 7F
	db ROCKET, 35, AI_SMART ; Silph Co. 8F
	db ROCKET, 36, AI_SMART ; Silph Co. 8F
	db ROCKET, 37, AI_SMART ; Silph Co. 9F
	db ROCKET, 38, AI_SMART ; Silph Co. 9F
	db ROCKET, 39, AI_SMART ; Silph Co. 10F
	db ROCKET, 40, AI_SMART ; Silph Co. 11F
	db ROCKET, 42, AI_BOSS ; Jessie & James
	db ROCKET, 43, AI_BOSS ; Jessie & James
	db ROCKET, 44, AI_BOSS ; Jessie & James
	db ROCKET, 45, AI_BOSS ; Jessie & James
	db COOLTRAINER_M, 2, AI_SMART ; Victory Road 3F
	db COOLTRAINER_M, 3, AI_BOSS ; Victory Road 3F
	db COOLTRAINER_M, 5, AI_BOSS ; Victory Road 1F
	db COOLTRAINER_M, 10, AI_BOSS ; Viridian Gym (rare)
	db COOLTRAINER_F, 1, AI_BOSS ; Celadon Gym (rare)
	db COOLTRAINER_F, 2, AI_SMART ; Victory Road 3F
	db COOLTRAINER_F, 3, AI_BOSS ; Victory Road 3F
	db COOLTRAINER_F, 5, AI_BOSS ; Victory Road 1F
	db -1 ; end
