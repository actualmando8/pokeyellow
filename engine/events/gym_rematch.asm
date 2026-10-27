; Post-game gym rematches (Phase 7b).
;
; Once MEWTWO has been dealt with, every gym leader offers a rematch with a
; level 65-75 team. Each win hands over a themed item (the money comes from
; the normal trainer class payout). GIOVANNI returns to his gym after the
; other seven rematches are done. After all eight, MEW appears in
; CERULEAN CAVE.
;
; The eight EVENT_REMATCH_* flags are one byte (wEventFlags + EVENT_REMATCH_BROCK / 8);
; bit n = leader index n.

DEF REMATCH_ALL_OTHERS EQU %01111111 ; every leader except GIOVANNI (index 7)
DEF REMATCH_GIOVANNI_INDEX EQU 7

; leader index -> trainer class, party number, reward item, reward quantity
GymRematchData:
	db OPP_BROCK,    2, PP_UP,         1
	db OPP_MISTY,    2, WATER_STONE,   1
	db OPP_LT_SURGE, 2, THUNDER_STONE, 1
	db OPP_ERIKA,    2, LEAF_STONE,    1
	db OPP_KOGA,     2, PP_UP,         1
	db OPP_SABRINA,  2, MOON_STONE,    1
	db OPP_BLAINE,   2, FIRE_STONE,    1
	db OPP_GIOVANNI, 4, RARE_CANDY,    5

GymRematchGetMask:
; in: b = leader index; out: a = 1 << b
	ld a, 1
	ld c, b
	inc c
.loop
	dec c
	ret z
	add a
	jr .loop

GymRematchOffer::
; Called by a gym leader's text once the leader has been beaten.
; in: c = leader index (0-7) (callfar clobbers b and hl, and a on return)
; out (flags only, as callfar clobbers a/b/c on return):
;      nc    = no rematch business, the caller prints its usual text
;      c, nz = rematch declined or reward handed over, the caller just ends
;      c, z  = rematch accepted, the battle has been set up
	ld b, c
	push bc
	CheckEvent EVENT_BEAT_MEWTWO
	jp z, .none
	CheckEvent EVENT_REMATCH_WON
	jp nz, .reward
	call GymRematchGetMask
	ld hl, (wEventFlags + EVENT_REMATCH_BROCK / 8)
	and [hl]
	jr nz, .none ; already rematched
	pop bc
	push bc
	ld a, b
	cp REMATCH_GIOVANNI_INDEX
	jr nz, .offer
	ld a, [hl]
	and REMATCH_ALL_OTHERS
	cp REMATCH_ALL_OTHERS
	jp nz, .none
.offer
	pop bc
	push bc
	ld a, b
	add a
	ld e, a
	ld d, 0
	ld hl, GymRematchOfferTexts
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .declined
	ld hl, GymRematchAcceptText
	call PrintText
	pop bc
	push bc
	ld a, b
	inc a
	ld [wGymLeaderNo], a ; 1-8, as in the original gym scripts
	ld a, b
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, GymRematchData
	add hl, de
	ld a, [hli]
	ld [wEngagedTrainerClass], a
	ld a, [hl]
	ld [wEngagedTrainerSet], a
	call InitBattleEnemyParameters
	ld hl, GymRematchEndBattleText
	ld d, h
	ld e, l
	call SaveEndBattleTextPointers
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	call PlayTrainerMusic
	xor a
	ldh [hJoyHeld], a
	SetEvent EVENT_REMATCH_ACTIVE
	pop bc
	xor a
	scf
	ret
.declined
	ld hl, GymRematchDeclineText
	call PrintText
	pop bc
	ld a, 1
	and a
	scf
	ret
.none
	pop bc
	xor a ; nc
	ret

.reward
	ResetEvent EVENT_REMATCH_WON
	pop bc
	push bc
	ld a, b
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, GymRematchData + 2
	add hl, de
	ld a, [hli]
	ld b, a
	ld c, [hl]
	call GiveItem
	jr c, .gotItem
	ld hl, GymRematchNoRoomText
	call PrintText
	pop bc
	ld a, 1
	and a
	scf
	ret
.gotItem
	pop bc
	push bc
	call GymRematchGetMask
	ld hl, (wEventFlags + EVENT_REMATCH_BROCK / 8)
	or [hl]
	ld [hl], a
	ld hl, GymRematchRewardText
	call PrintText
	; unlock Mew once all eight are done
	ld a, [(wEventFlags + EVENT_REMATCH_BROCK / 8)]
	cp $FF
	jr nz, .checkGiovanni
	ld a, TOGGLE_CERULEAN_CAVE_B1F_MEW
	ld [wToggleableObjectIndex], a
	predef ShowObject
	ld hl, GymRematchMewText
	call PrintText
	jr .rewardDone
.checkGiovanni
	and REMATCH_ALL_OTHERS
	cp REMATCH_ALL_OTHERS
	jr nz, .rewardDone
	ld a, TOGGLE_VIRIDIAN_GYM_GIOVANNI
	ld [wToggleableObjectIndex], a
	predef ShowObject
	ld hl, GymRematchGiovanniText
	call PrintText
.rewardDone
	pop bc
	ld a, 1
	and a
	scf
	ret

GymRematchPostBattle::
; Called at the top of every gym leader's post-battle script.
; in: d = the leader's text ID
; out: carry set if this was a rematch (the caller only resets its scripts)
	CheckEvent EVENT_REMATCH_ACTIVE
	jr z, .notRematch
	ResetEvent EVENT_REMATCH_ACTIVE
	ld a, [wIsInBattle]
	cp LOST_BATTLE
	jr z, .handled
	SetEvent EVENT_REMATCH_WON
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld a, d
	ldh [hTextID], a
	call DisplayTextID ; runs the leader's text, which hands over the reward
.handled
	scf
	ret
.notRematch
	and a
	ret

GymRematchOfferTexts:
	dw .brock, .misty, .surge, .erika, .koga, .sabrina, .blaine, .giovanni

.brock
	text "BROCK: MEWTWO is"
	line "history? Then my"
	cont "rock-solid team"
	cont "is ready for you!"
	para "Rematch?"
	done

.misty
	text "MISTY: Word is"
	line "MEWTWO is taken"
	cont "care of. I've been"
	cont "training hard!"
	para "Rematch?"
	done

.surge
	text "LT.SURGE: Hey kid!"
	line "I've powered up"
	cont "my whole squad!"
	para "Rematch?"
	done

.erika
	text "ERIKA: My garden"
	line "has bloomed since"
	cont "we last met."
	para "Care for a"
	line "rematch?"
	done

.koga
	text "KOGA: A ninja"
	line "never stops"
	cont "training. Test my"
	cont "new techniques!"
	para "Rematch?"
	done

.sabrina
	text "SABRINA: I saw"
	line "this coming."
	cont "My powers have"
	cont "grown stronger."
	para "Rematch?"
	done

.blaine
	text "BLAINE: Hah! My"
	line "fire burns hotter"
	cont "than ever!"
	para "Rematch?"
	done

.giovanni
	text "GIOVANNI: You beat"
	line "the others, so I"
	cont "will face you at"
	cont "my full strength."
	para "Rematch?"
	done

GymRematchAcceptText:
	text "Then show me"
	line "what you've got!"
	done

GymRematchDeclineText:
	text "Come back when"
	line "you're ready."
	done

GymRematchEndBattleText:
	text "Magnificent!"
	line "You've truly"
	cont "grown."
	prompt

GymRematchRewardText:
	text "Please take this"
	line "as a reward."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

GymRematchNoRoomText:
	text "Your pack is full."
	line "Make room, then"
	cont "challenge me"
	cont "again!"
	done

GymRematchMewText:
	text "..."
	para "A faint cry echoes"
	line "from CERULEAN"
	cont "CAVE..."
	done

GymRematchGiovanniText:
	text "Word has it that"
	line "GIOVANNI is back"
	cont "at VIRIDIAN GYM."
	done
