; forbids the moves that are out of PP (like the disabled one)
AIForbidMovesWithoutPP:
	ld hl, wBuffer
	ld de, wEnemyMonPP
	ld b, NUM_MOVES
.loop
	ld a, [de]
	and PP_MASK
	jr nz, .next
	ld [hl], $50
.next
	inc hl
	inc de
	dec b
	jr nz, .loop
	ret

; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIEnemyTrainerChooseMoves:
	call AISaveBattleScratch
	call AIChooseMovesInner
	push hl
	call AIRestoreBattleScratch
	pop hl
	ret

TrainerAI:
	call AISaveBattleScratch
	call AITrainerTurn
	push af
	call AIRestoreBattleScratch
	pop af
	ret

; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIChooseMovesInner:
	ld a, $a
	ld hl, wBuffer ; init temporary move selection array. Only the moves with the lowest numbers are chosen in the end
	ld [hli], a   ; move 1
	ld [hli], a   ; move 2
	ld [hli], a   ; move 3
	ld [hl], a    ; move 4
	ld a, [wEnemyDisabledMove] ; forbid disabled move (if any)
	swap a
	and $f
	jr z, .noMoveDisabled
	ld hl, wBuffer
	dec a
	ld c, a
	ld b, $0
	add hl, bc    ; advance pointer to forbidden move
	ld [hl], $50  ; forbid (highly discourage) disabled move
.noMoveDisabled
	call AIForbidMovesWithoutPP
	call AIGetTier
	and a
	jr z, .basicTrainer
	ld hl, SmartMoveChoiceLayers
	jr .readTrainerClassData
.basicTrainer
	ld hl, TrainerClassMoveChoiceModifications
	ld a, [wTrainerClass]
	ld b, a
.loopTrainerClasses
	dec b
	jr z, .readTrainerClassData
.loopTrainerClassData
	ld a, [hli]
	and a
	jr nz, .loopTrainerClassData
	jr .loopTrainerClasses
.readTrainerClassData
	ld a, [hl]
	and a
	jp z, .useOriginalMoveSet
	push hl
.nextMoveChoiceModification
	pop hl
	ld a, [hli]
	and a
	jr z, .loopFindMinimumEntries
	push hl
	ld hl, AIMoveChoiceModificationFunctionPointers
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc    ; skip to pointer
	ld a, [hli]   ; read pointer into hl
	ld h, [hl]
	ld l, a
	ld de, .nextMoveChoiceModification  ; set return address
	push de
	jp hl         ; execute modification function
.loopFindMinimumEntries ; all entries will be decremented sequentially until one of them is zero
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.loopDecrementEntries
	ld a, [de]
	inc de
	and a
	jr z, .loopFindMinimumEntries
	dec [hl]
	jr z, .minimumEntriesFound
	inc hl
	dec c
	jr z, .loopFindMinimumEntries
	jr .loopDecrementEntries
.minimumEntriesFound
	ld a, c
.loopUndoPartialIteration ; undo last (partial) loop iteration
	inc [hl]
	dec hl
	inc a
	cp NUM_MOVES + 1
	jr nz, .loopUndoPartialIteration
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.filterMinimalEntries ; all minimal entries now have value 1. All other slots will be disabled (move set to 0)
	ld a, [de]
	and a
	jr nz, .moveExisting
	ld [hl], a
.moveExisting
	ld a, [hl]
	dec a
	jr z, .slotWithMinimalValue
	xor a
	ld [hli], a     ; disable move slot
	jr .next
.slotWithMinimalValue
	ld a, [de]
	ld [hli], a     ; enable move slot
.next
	inc de
	dec c
	jr nz, .filterMinimalEntries
	ld hl, wBuffer    ; use created temporary array as move set
	ret
.useOriginalMoveSet
	ld hl, wEnemyMonMoves    ; use original move set
	ret

AIMoveChoiceModificationFunctionPointers:
	dw AIMoveChoiceModification1
	dw AIMoveChoiceModification2
	dw AIMoveChoiceModification3
	dw AIMoveChoiceModification4 ; unused, does nothing
	dw AIMoveChoiceModificationDamage
	dw AIMoveChoiceModificationSetup


AIMoveChoiceModification1:
	ld a, [wBattleMonStatus]
	and a
	ret z ; return if no status ailment on player's mon
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	and a
	ret z ; no more moves in move set
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr nz, .nextMove
	ld a, [wEnemyMoveEffect]
	push hl
	push de
	push bc
	ld hl, StatusAilmentMoveEffects
	ld de, 1
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .nextMove
	ld a, [hl]
	add $5 ; heavily discourage move
	ld [hl], a
	jr .nextMove

StatusAilmentMoveEffects:
	db EFFECT_01 ; unused sleep effect
	db SLEEP_EFFECT
	db POISON_EFFECT
	db PARALYZE_EFFECT
	db -1 ; end

; slightly encourage moves with specific effects.
; in particular, stat-modifying moves and other move effects
; that fall in-between
AIMoveChoiceModification2:
	ld a, [wAILayer2Encouragement]
	cp $1
	ret nz
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	and a
	ret z ; no more moves in move set
	inc de
	call ReadMove
	ld a, [wEnemyMoveEffect]
	cp ATTACK_UP1_EFFECT
	jr c, .nextMove
	cp BIDE_EFFECT
	jr c, .preferMove
	cp ATTACK_UP2_EFFECT
	jr c, .nextMove
	cp POISON_EFFECT
	jr c, .preferMove
	jr .nextMove
.preferMove
	dec [hl] ; slightly encourage this move
	jr .nextMove

; encourages moves that are effective against the player's mon (even if non-damaging).
; discourage damaging moves that are ineffective or not very effective against the player's mon,
; unless there's no damaging move that deals at least neutral damage
AIMoveChoiceModification3:
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	and a
	ret z ; no more moves in move set
	inc de
	call ReadMove
	push hl
	push bc
	push de
	callfar AIGetTypeEffectiveness
	pop de
	pop bc
	pop hl
	ld a, [wTypeEffectiveness]
	cp $10
	jr z, .nextMove
	jr c, .notEffectiveMove
	dec [hl] ; slightly encourage this move
	jr .nextMove
.notEffectiveMove ; discourages non-effective moves if better moves are available
	push hl
	push de
	push bc
	ld a, [wEnemyMoveType]
	ld d, a
	ld hl, wEnemyMonMoves  ; enemy moves
	ld b, NUM_MOVES + 1
	ld c, $0
.loopMoves
	dec b
	jr z, .done
	ld a, [hli]
	and a
	jr z, .done
	call ReadMove
	ld a, [wEnemyMoveEffect]
	cp SUPER_FANG_EFFECT
	jr z, .betterMoveFound ; Super Fang is considered to be a better move
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .betterMoveFound ; any special damage moves are considered to be better moves
	cp FLY_EFFECT
	jr z, .betterMoveFound ; Fly is considered to be a better move
	ld a, [wEnemyMoveType]
	cp d
	jr z, .loopMoves
	ld a, [wEnemyMovePower]
	and a
	jr nz, .betterMoveFound ; damaging moves of a different type are considered to be better moves
	jr .loopMoves
.betterMoveFound
	ld c, a
.done
	ld a, c
	pop bc
	pop de
	pop hl
	and a
	jr z, .nextMove
	inc [hl] ; slightly discourage this move
	jr .nextMove
AIMoveChoiceModification4:
	ret

AITrainerTurn:
	ld a, [wIsInBattle]
	dec a
	jr z, .done ; if not a trainer, we're done here
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	jr z, .done ; if in a link battle, we're done as well
	ld a, [wEnemyBattleStatus1]
	and 1 << CHARGING_UP | 1 << THRASHING_ABOUT | 1 << STORING_ENERGY
	jr nz, .done ; don't follow trainer ai if opponent is in a locked state
	ld a, [wEnemyBattleStatus2]
	and 1 << USING_RAGE
	jr nz, .done ; don't follow trainer ai if opponent is locked in rage
	             ; note that this doesn't check for hyper beam recharge which can cause problems
	call AIGetTier
	and a
	jp nz, SmartTrainerAI
	ld a, [wTrainerClass] ; what trainer class is this?
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerAIPointers
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wAICount]
	and a
	jr z, .done ; if no AI uses left, we're done here
	inc hl
	inc a
	jr nz, .getpointer
	dec hl
	ld a, [hli]
	ld [wAICount], a
.getpointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Random
	jp hl
.done
	and a
	ret

INCLUDE "data/trainers/ai_pointers.asm"
INCLUDE "data/trainers/ai_tiers.asm"
INCLUDE "data/trainers/ai_kits.asm"
INCLUDE "data/trainers/move_choices.asm"

JugglerAI:
	cp 25 percent + 1
	ret nc
	jp AISwitchIfEnoughMons

BlackbeltAI:
	cp 13 percent - 1
	ret nc
	jp AIUseXAttack

GiovanniAI:
	cp 25 percent + 1
	ret nc
	jp AIUseGuardSpec

CooltrainerMAI:
	cp 25 percent + 1
	ret nc
	jp AIUseXAttack

CooltrainerFAI:
	; The intended 25% chance to consider switching will not apply.
	; Uncomment the line below to fix this.
	cp 25 percent + 1
	; ret nc
	ld a, 10
	call AICheckIfHPBelowFraction
	jp c, AIUseHyperPotion
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons

BrockAI:
; if his active monster has a status condition, use a full heal
	ld a, [wEnemyMonStatus]
	and a
	ret z
	jp AIUseFullHeal

MistyAI:
	cp 25 percent + 1
	ret nc
	jp AIUseXDefend

LtSurgeAI:
	cp 25 percent + 1
	ret nc
	jp AIUseXSpeed

ErikaAI:
	cp 50 percent + 1
	ret nc
	ld a, 10
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

KogaAI:
	cp 13 percent - 1
	ret nc
	jp AIUseXAttack

BlaineAI:
	cp 25 percent + 1
	ret nc
	ld a, 10
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

SabrinaAI:
	cp 25 percent + 1
	ret nc
	jp AIUseXDefend

Rival2AI:
	cp 13 percent - 1
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUsePotion

Rival3AI:
	cp 13 percent - 1
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseFullRestore

LoreleiAI:
	cp 50 percent + 1
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

BrunoAI:
	cp 25 percent + 1
	ret nc
	jp AIUseXDefend

AgathaAI:
	cp 8 percent
	jp c, AISwitchIfEnoughMons
	cp 50 percent + 1
	ret nc
	ld a, 4
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

LanceAI:
	cp 50 percent + 1
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseHyperPotion

GenericAI:
	and a ; clear carry
	ret

; end of individual trainer AI routines

DecrementAICount:
	ld hl, wAICount
	dec [hl]
	scf
	ret

AIPlayRestoringSFX:
	ld a, SFX_HEAL_AILMENT
	jp PlaySoundWaitForCurrent

AIUseFullRestore:
	call AICureStatus
	ld a, FULL_RESTORE
	ld [wAIItem], a
	ld de, wHPBarOldHP
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld hl, wEnemyMonMaxHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld [wHPBarMaxHP], a
	ld [wEnemyMonHP + 1], a
	ld a, [hl]
	ld [de], a
	ld [wHPBarMaxHP+1], a
	ld [wEnemyMonHP], a
	jr AIPrintItemUseAndUpdateHPBar

AIUsePotion:
; enemy trainer heals his monster with a potion
	ld a, POTION
	ld b, 20
	jr AIRecoverHP

AIUseSuperPotion:
; enemy trainer heals his monster with a super potion
	ld a, SUPER_POTION
	ld b, 50
	jr AIRecoverHP

AIUseHyperPotion:
; enemy trainer heals his monster with a hyper potion
	ld a, HYPER_POTION
	ld b, 200
	; fallthrough

AIRecoverHP:
; heal b HP and print "trainer used $(a) on pokemon!"
	ld [wAIItem], a
	ld hl, wEnemyMonHP + 1
	ld a, [hl]
	ld [wHPBarOldHP], a
	add b
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [hl]
	ld [wHPBarOldHP+1], a
	ld [wHPBarNewHP+1], a
	jr nc, .next
	inc a
	ld [hl], a
	ld [wHPBarNewHP+1], a
.next
	inc hl
	ld a, [hld]
	ld b, a
	ld de, wEnemyMonMaxHP + 1
	ld a, [de]
	dec de
	ld [wHPBarMaxHP], a
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	ld [wHPBarMaxHP+1], a
	sbc b
	jr nc, AIPrintItemUseAndUpdateHPBar
	inc de
	ld a, [de]
	dec de
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [de]
	ld [hl], a
	ld [wHPBarNewHP+1], a
	; fallthrough

AIPrintItemUseAndUpdateHPBar:
	call AIPrintItemUse_
	hlcoord 2, 2
	xor a
	ld [wHPBarType], a
	predef UpdateHPBar2
	jp DecrementAICount

AISwitchIfEnoughMons:
; enemy trainer switches if there are 2 or more unfainted mons in party
	call AICountUnfainted
	ld a, d ; how many available monsters are there?
	cp 2    ; don't bother if only 1
	jp nc, SwitchEnemyMon
	and a
	ret

SwitchEnemyMon:

; prepare to withdraw the active monster: copy HP, party pos, and status to roster

	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonHP
	ld bc, MON_STATUS + 1 - MON_HP ; also copies party pos in-between HP and status
	call CopyData

	ld hl, AIBattleWithdrawText
	call PrintText

	; This wFirstMonsNotOutYet variable is abused to prevent the player from
	; switching in a new mon in response to this switch.
	ld a, 1
	ld [wFirstMonsNotOutYet], a
	callfar EnemySendOut
	xor a
	ld [wFirstMonsNotOutYet], a

	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret

AIBattleWithdrawText:
	text_far _AIBattleWithdrawText
	text_end

AIUseFullHeal:
	call AIPlayRestoringSFX
	call AICureStatus
	ld a, FULL_HEAL
	jp AIPrintItemUse

AICureStatus:
; cures the status of enemy's active pokemon
	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1Status
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	xor a
	ld [hl], a ; clear status in enemy team roster
	ld [wEnemyMonStatus], a ; clear status of active enemy
	ld hl, wEnemyBattleStatus3
	res BADLY_POISONED, [hl]
	ret

AIUseXAccuracy: ; unreferenced
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set USING_X_ACCURACY, [hl]
	ld a, X_ACCURACY
	jp AIPrintItemUse

AIUseGuardSpec:
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set PROTECTED_BY_MIST, [hl]
	ld a, GUARD_SPEC
	jp AIPrintItemUse

AIUseDireHit: ; unreferenced
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set GETTING_PUMPED, [hl]
	ld a, DIRE_HIT
	jp AIPrintItemUse

AICheckIfHPBelowFraction:
; return carry if enemy trainer's current HP is below 1 / a of the maximum
	ldh [hDivisor], a
	ld hl, wEnemyMonMaxHP
	ld a, [hli]
	ldh [hDividend], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]
	ld c, a
	ldh a, [hQuotient + 2]
	ld b, a
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, d
	sub b
	ret nz
	ld a, e
	sub c
	ret

AIUseXAttack:
	ld b, ATTACK_UP1_EFFECT
	ld a, X_ATTACK
	jr AIIncreaseStat

AIUseXDefend:
	ld b, DEFENSE_UP1_EFFECT
	ld a, X_DEFEND
	jr AIIncreaseStat

AIUseXSpeed:
	ld b, SPEED_UP1_EFFECT
	ld a, X_SPEED
	jr AIIncreaseStat

AIUseXSpecial:
	ld b, SPATK_UP1_EFFECT
	ld a, X_SPECIAL
	; fallthrough

AIIncreaseStat:
	ld [wAIItem], a
	push bc
	call AIPrintItemUse_
	pop bc
	ld hl, wEnemyMoveEffect
	ld a, [hld]
	push af
	ld a, [hl]
	push af
	push hl
	ld a, XSTATITEM_DUPLICATE_ANIM
	ld [hli], a
	ld [hl], b
	callfar StatModifierUpEffect
	pop hl
	pop af
	ld [hli], a
	pop af
	ld [hl], a
	jp DecrementAICount

AIPrintItemUse:
	ld [wAIItem], a
	call AIPrintItemUse_
	jp DecrementAICount

AIPrintItemUse_:
; print "x used [wAIItem] on z!"
	ld a, [wAIItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, AIBattleUseItemText
	jp PrintText

AIBattleUseItemText:
	text_far _AIBattleUseItemText
	text_end


; ---------------------------------------------------------------------------
; Smarter trainer AI (tiers AI_SMART and AI_BOSS, see data/trainers/ai_tiers.asm)
;
; A tier-0 trainer behaves like the original game (plus the class move-choice
; layers, which now always include layers 1 and 3).  Tier 1 and 2 trainers run
; their own layer list (SmartMoveChoiceLayers), a per-turn item/switch routine
; (SmartTrainerAI) and pick their next mon with AIPickNextMon.
; ---------------------------------------------------------------------------

; scratch inside wBuffer (the move-choice array uses wBuffer+0..3)
DEF wAIEstimates EQUS "wBuffer + 8"  ; 4 words: estimated damage of each move
DEF wAIMaxEst    EQUS "wBuffer + 16" ; word: the largest estimate
DEF wAIThreshold EQUS "wBuffer + 18" ; word: 3/4 of the largest estimate
DEF wAIKinds     EQUS "wBuffer + 20" ; 4 bytes: 0 = status move, 1 = damaging, 2 = out of PP

SmartMoveChoiceLayers:
	db 1, 5, 6, 0

; output: a = tier of the current trainer (AI_BASIC, AI_SMART or AI_BOSS)
; preserves bc, de, hl
AIGetTier:
	push hl
	push bc
	ld a, [wTrainerClass]
	ld c, a
	ld a, [wTrainerNo]
	ld b, a
	ld hl, TrainerAITierOverrides
.overrideLoop
	ld a, [hli]
	cp -1
	jr z, .useClass
	cp c
	jr nz, .skipTwo
	ld a, [hli]
	cp b
	jr nz, .skipOne
	ld a, [hl]
	jr .done
.skipTwo
	inc hl
.skipOne
	inc hl
	jr .overrideLoop
.useClass
	ld a, c
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerAITiers
	add hl, bc
	ld a, [hl]
.done
	pop bc
	pop hl
	ret

; output: a = -tier, i.e. how strongly this trainer encourages a move it likes
AIEncourage:
	call AIGetTier
	cpl
	inc a
	ret

; Saves / restores the battle variables the damage estimate borrows.
AISaveBattleScratch:
	ld hl, wAISaved
	ldh a, [hWhoseTurn]
	ld [hli], a
	ld a, [wCriticalHitOrOHKO]
	ld [hli], a
	ld a, [wDamageMultipliers]
	ld [hli], a
	ld a, [wMoveMissed]
	ld [hli], a
	ld a, [wMoveType]
	ld [hli], a
	ld a, [wDamage]
	ld [hli], a
	ld a, [wDamage + 1]
	ld [hl], a
	ret

AIRestoreBattleScratch:
	ld hl, wAISaved
	ld a, [hli]
	ldh [hWhoseTurn], a
	ld a, [hli]
	ld [wCriticalHitOrOHKO], a
	ld a, [hli]
	ld [wDamageMultipliers], a
	ld a, [hli]
	ld [wMoveMissed], a
	ld a, [hli]
	ld [wMoveType], a
	ld a, [hli]
	ld [wDamage], a
	ld a, [hl]
	ld [wDamage + 1], a
	ret

; a = move id -> a = move category. Preserves bc, de, hl.
AIGetMoveCategory:
	push hl
	push bc
	dec a ; move IDs start at 1
	ld c, a
	ld b, 0
	ld hl, MoveCategories
	add hl, bc
	ld a, BANK(MoveCategories)
	call GetFarByte
	pop bc
	pop hl
	ret

; hl = a move list (4 bytes), a = category
; output: carry set if one of the moves has that category
AIMovesHaveCategory:
	ld d, a
	ld b, NUM_MOVES
.loop
	ld a, [hli]
	and a
	jr z, .no
	call AIGetMoveCategory
	cp d
	jr z, .yes
	dec b
	jr nz, .loop
.no
	and a
	ret
.yes
	scf
	ret

; ---------------------------------------------------------------------------
; Damage estimate
; ---------------------------------------------------------------------------

; Estimates the damage that the enemy move currently loaded in wEnemyMove*
; (by ReadMove) would do to the player's mon: the game's own damage formula,
; STAB and type effectiveness, but without the random roll, scaled by accuracy.
; The caller must have saved the battle variables (AISaveBattleScratch) and set
; hWhoseTurn to 1.
; output: de = estimate; 0 if the move cannot hurt or is not worth using
AIEstimateDamage:
	ld a, [wEnemyMoveEffect]
	cp OHKO_EFFECT
	jp z, .none
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .level
	cp SUPER_FANG_EFFECT
	jr z, .superFang
	cp DREAM_EATER_EFFECT
	jr nz, .calculate
	ld a, [wBattleMonStatus]
	and SLP_MASK
	jr z, .none ; Dream Eater needs a sleeping target
.calculate
	callfar AIDamageProbe
	ld a, [wDamage]
	ld d, a
	ld a, [wDamage + 1]
	ld e, a
	or d
	ret z ; immune
	ld a, [wEnemyMoveEffect]
	cp TWO_TO_FIVE_ATTACKS_EFFECT
	jr z, .triple
	cp ATTACK_TWICE_EFFECT
	jr z, .double
	cp TWINEEDLE_EFFECT
	jr z, .double
	cp CHARGE_EFFECT
	jr z, .halve
	cp FLY_EFFECT
	jr z, .halve
	cp HYPER_BEAM_EFFECT
	jr z, .halve
	cp EXPLODE_EFFECT
	jr nz, .accuracy
; only blow up when nearly fainted anyway
	ld a, 4
	push de
	call AICheckIfHPBelowFraction
	pop de
	jr nc, .none
	jr .accuracy
.triple
	ld h, d
	ld l, e
	add hl, de
	add hl, de
	ld d, h
	ld e, l
	jr .accuracy
.double
	sla e
	rl d
	jr .accuracy
.halve
	srl d
	rr e
.accuracy
	xor a
	ldh [hMultiplicand], a
	ld a, d
	ldh [hMultiplicand + 1], a
	ld a, e
	ldh [hMultiplicand + 2], a
	ld a, [wEnemyMoveAccuracy]
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 1]
	ld d, a
	ldh a, [hProduct + 2]
	ld e, a
	or d
	ret nz
	inc e ; a damaging move that can hit is never worth less than 1
	ret
.level
	ld a, [wEnemyMonLevel]
	ld e, a
	ld d, 0
	ret
.superFang
	ld hl, wBattleMonHP
	ld a, [hli]
	ld d, a
	ld e, [hl]
	srl d
	rr e
	ret
.none
	ld de, 0
	ret

; Fills wAIEstimates / wAIKinds / wAIMaxEst for the enemy's four moves.
; The caller must have saved the battle variables.
AIFillEstimates:
	ld a, 1
	ldh [hWhoseTurn], a
	xor a
	ld [wCriticalHitOrOHKO], a
	ld hl, wAIEstimates
	ld b, 16 ; estimates, maximum, threshold, kinds
.clear
	ld [hli], a
	dec b
	jr nz, .clear
	ld c, 0
.slot
	ld a, c
	cp NUM_MOVES
	jr nc, .threshold
	ld hl, wEnemyMonMoves
	ld b, 0
	add hl, bc
	ld a, [hl]
	and a
	jr z, .threshold
	push bc
	call ReadMove
	pop bc
	ld a, [wEnemyMovePower]
	and a
	jr z, .nextSlot ; status move
	ld hl, wEnemyMonPP
	ld b, 0
	add hl, bc
	ld a, [hl]
	and $3f
	ld a, 2
	jr z, .setKind ; no PP left
	push bc
	call AIEstimateDamage
	pop bc
	ld hl, wAIEstimates
	ld a, c
	add a
	add l
	ld l, a
	jr nc, .storeEstimate
	inc h
.storeEstimate
	ld a, d
	ld [hli], a
	ld [hl], e
	; keep the maximum
	ld a, [wAIMaxEst + 1]
	sub e
	ld a, [wAIMaxEst]
	sbc d
	jr nc, .markDamaging
	ld a, d
	ld [wAIMaxEst], a
	ld a, e
	ld [wAIMaxEst + 1], a
.markDamaging
	ld a, 1
.setKind
	ld hl, wAIKinds
	ld b, 0
	add hl, bc
	ld [hl], a
.nextSlot
	inc c
	jr .slot
.threshold
	ld a, [wAIMaxEst]
	ld h, a
	ld a, [wAIMaxEst + 1]
	ld l, a
	ld d, h
	ld e, l
	srl d
	rr e
	srl d
	rr e ; de = max / 4
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a ; hl = max - max / 4
	ld a, h
	ld [wAIThreshold], a
	ld a, l
	ld [wAIThreshold + 1], a
	ret

; carry set if the enemy's best damaging move would knock out the player's mon
; and the enemy moves first (so there is no point switching or healing)
; The caller must have saved the battle variables.
AICanKOFirst:
	call AIFillEstimates
	ld a, [wBattleMonHP + 1]
	ld e, a
	ld a, [wBattleMonHP]
	ld d, a
	ld a, [wAIMaxEst + 1]
	sub e
	ld a, [wAIMaxEst]
	sbc d
	jr c, .no ; best estimate < player's HP
	ld a, [wEnemyMonSpeed + 1]
	ld e, a
	ld a, [wEnemyMonSpeed]
	ld d, a
	ld a, [wBattleMonSpeed + 1]
	sub e
	ld a, [wBattleMonSpeed]
	sbc d
	jr nc, .no ; the player is at least as fast
	scf
	ret
.no
	and a
	ret

; ---------------------------------------------------------------------------
; Move choice layer 5: damage
; Prefers the move with the highest estimated damage, loves a knockout, and
; avoids moves that cannot hurt the target or have no PP left.
; ---------------------------------------------------------------------------
AIMoveChoiceModificationDamage:
	call AIGetTier
	cp AI_BOSS
	jr z, .go
	call Random
	cp 25 percent
	ret c ; a competent trainer sometimes just picks a move
.go
	call AIFillEstimates
	ld hl, wBuffer
	ld c, 0
.nextMove
	ld a, c
	cp NUM_MOVES
	ret nc
	push hl
	ld hl, wEnemyMonMoves
	ld b, 0
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	ret z
	push hl
	ld hl, wAIKinds
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, .skip ; status move: layer 6
	cp 2
	jr nz, .damaging
	ld a, $50 ; out of PP
	jr .addScore
.damaging
	ld a, c
	add a
	ld e, a
	ld d, 0
	push hl
	ld hl, wAIEstimates
	add hl, de
	ld a, [hli]
	ld d, a
	ld e, [hl]
	pop hl
	ld a, d
	or e
	jr nz, .canHurt
	ld a, 4
	jr .addScore
.canHurt
	ld b, 0 ; b = score change
; knockout?
	ld a, [wBattleMonHP + 1]
	sub e
	ld a, [wBattleMonHP]
	sbc d
	jr nc, .noKO
	dec b
	dec b
.noKO
; compared with the best move
	ld a, [wAIMaxEst]
	cp d
	jr nz, .notBest
	ld a, [wAIMaxEst + 1]
	cp e
	jr nz, .notBest
	dec b
	dec b
	jr .applyChange
.notBest
	ld a, [wAIThreshold + 1]
	sub e
	ld a, [wAIThreshold]
	sbc d
	jr nc, .weak
	dec b
	jr .applyChange
.weak
	inc b
.applyChange
	ld a, b
.addScore
	add [hl]
	ld [hl], a
.skip
	inc hl
	inc c
	jr .nextMove

; ---------------------------------------------------------------------------
; Move choice layer 6: status moves and setup
; ---------------------------------------------------------------------------
AIMoveChoiceModificationSetup:
	call AIGetTier
	cp AI_BOSS
	jr z, .go
	call Random
	cp 40 percent
	ret c ; a competent trainer sometimes just attacks
.go
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z
	inc hl
	ld a, [de]
	and a
	ret z
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr nz, .nextMove ; damaging moves are scored by layer 5
	push hl
	push de
	push bc
	call AIStatusMoveScore
	pop bc
	pop de
	pop hl
	add [hl]
	ld [hl], a
	jr .nextMove

; output: a = score change for the status move in wEnemyMove*
; (negative = encourage, positive = discourage)
AIStatusMoveScore:
	ld a, [wEnemyMoveEffect]
	ld b, a
	; stat raising moves
	sub ATTACK_UP1_EFFECT
	cp 7
	jr c, .selfBoost
	ld a, b
	sub ATTACK_UP2_EFFECT
	cp 7
	jr c, .selfBoost
	; stat lowering moves
	ld a, b
	sub ATTACK_DOWN1_EFFECT
	cp 7
	jp c, .foeDrop
	ld a, b
	sub ATTACK_DOWN2_EFFECT
	cp 7
	jp c, .foeDrop
	ld a, b
	cp SLEEP_EFFECT
	jp z, .sleep
	cp PARALYZE_EFFECT
	jp z, .sleep
	cp POISON_EFFECT
	jp z, .poison
	cp CONFUSION_EFFECT
	jp z, .confuse
	cp LEECH_SEED_EFFECT
	jp z, .leechSeed
	cp HEAL_EFFECT
	jp z, .heal
	cp ROOST_EFFECT
	jp z, .heal
	cp REFLECT_EFFECT
	jp z, .reflect
	cp LIGHT_SCREEN_EFFECT
	jp z, .lightScreen
	cp SUBSTITUTE_EFFECT
	jp z, .substitute
	cp HAZE_EFFECT
	jp z, .haze
	cp SWITCH_AND_TELEPORT_EFFECT
	jr z, .useless
	cp SPLASH_EFFECT
	jr z, .useless
	cp MIST_EFFECT
	jr z, .poorMove
	cp FOCUS_ENERGY_EFFECT
	jr z, .poorMove
	cp CONVERSION_EFFECT
	jr z, .poorMove
	xor a
	ret
.useless
	ld a, 5
	ret
.poorMove
	ld a, 3
	ret

.selfBoost ; a = stat index
	ld c, a
	ld hl, wEnemyMonStatMods
	ld b, 0
	add hl, bc
	ld a, [hl]
	cp 9
	jr nc, .discourage4 ; already +2 or better
	ld a, c
	cp 5
	jr nc, .discourage3 ; accuracy / evasion are not worth a turn
	and a
	jr nz, .notAttack
	ld a, PHYSICAL_MOVE
	jr .needsCategory
.notAttack
	cp 3
	jr nz, .notSpAtk
	ld a, SPECIAL_MOVE
.needsCategory
	ld hl, wEnemyMonMoves
	call AIMovesHaveCategory
	jr nc, .discourage4 ; no move would profit from it
	jr .boostHealthCheck
.notSpAtk
	cp 2
	jr nz, .boostHealthCheck
; speed: only if the player is faster
	ld a, [wBattleMonSpeed + 1]
	ld e, a
	ld a, [wBattleMonSpeed]
	ld d, a
	ld a, [wEnemyMonSpeed + 1]
	sub e
	ld a, [wEnemyMonSpeed]
	sbc d
	jr nc, .discourage2 ; already faster
.boostHealthCheck
	ld a, 2
	call AICheckIfHPBelowFraction
	jr c, .discourage3 ; too hurt to set up
	jp AIEncourage
.discourage2
	ld a, 2
	ret
.discourage3
	ld a, 3
	ret
.discourage4
	ld a, 4
	ret

.foeDrop ; a = stat index
	ld c, a
	ld hl, wPlayerMonStatMods
	ld b, 0
	add hl, bc
	ld a, [hl]
	cp 6
	jr c, .discourage4 ; already -2 or worse
	ld a, c
	cp 5
	jr nc, .discourage3
	ld a, 2
	call AICheckIfHPBelowFraction
	jr c, .discourage2
	call AIGetTier
	cp AI_BOSS
	jp nz, .zero
	ld a, -1
	ret

.sleep ; also paralysis
	; status that makes the player lose turns: great while the target is healthy
	ld a, [wPlayerBattleStatus2]
	bit HAS_SUBSTITUTE_UP, a
	jr nz, .discourage4
	call AIPlayerAboveThird
	jr nc, .discourage3
	jp AIEncourage

.poison
	ld a, [wPlayerBattleStatus2]
	bit HAS_SUBSTITUTE_UP, a
	jr nz, .discourage4
	ld a, [wBattleMonType1]
	call .poisonImmune
	jr z, .discourage4
	ld a, [wBattleMonType2]
	call .poisonImmune
	jr z, .discourage4
	call AIPlayerAboveHalf
	jr nc, .discourage3
	jp AIEncourage
.poisonImmune ; zero flag set if type a cannot be poisoned
	cp POISON
	ret z
	cp STEEL
	ret

.confuse
	ld a, [wPlayerBattleStatus1]
	bit CONFUSED, a
	jr nz, .discourage4
	ld a, [wPlayerBattleStatus2]
	bit HAS_SUBSTITUTE_UP, a
	jr nz, .discourage4
	call AIPlayerAboveHalf
	jr nc, .discourage2
	jp AIEncourage

.leechSeed
	ld a, [wPlayerBattleStatus2]
	bit SEEDED, a
	jr nz, .discourage4
	bit HAS_SUBSTITUTE_UP, a
	jr nz, .discourage4
	ld a, [wBattleMonType1]
	cp GRASS
	jp z, .discourage4
	ld a, [wBattleMonType2]
	cp GRASS
	jp z, .discourage4
	jp AIEncourage

.heal
	ld a, 2
	call AICheckIfHPBelowFraction
	jr nc, .healNotNeeded
	call AIEncourage
	dec a ; heal harder than the average setup move
	ret
.healNotNeeded
	ld a, 5
	ret

.reflect
	ld a, [wEnemyBattleStatus3]
	bit HAS_REFLECT_UP, a
	jp nz, .discourage4
	ld a, PHYSICAL_MOVE
	jr .screen
.lightScreen
	ld a, [wEnemyBattleStatus3]
	bit HAS_LIGHT_SCREEN_UP, a
	jp nz, .discourage4
	ld a, SPECIAL_MOVE
.screen
	ld hl, wBattleMonMoves
	call AIMovesHaveCategory
	jp nc, .discourage3
	ld a, 2
	call AICheckIfHPBelowFraction
	jp c, .discourage3
	jp AIEncourage

.substitute
	ld a, [wEnemyBattleStatus2]
	bit HAS_SUBSTITUTE_UP, a
	jp nz, .discourage4
	call AIGetTier
	cp AI_BOSS
	jp nz, .discourage3
	ld a, 2
	call AICheckIfHPBelowFraction
	jp c, .discourage3
	ld a, -1
	ret

.haze
	ld a, [wPlayerMonAttackMod]
	cp 9
	jr nc, .hazeUseful
	ld a, [wPlayerMonSpAtkMod]
	cp 9
	jr nc, .hazeUseful
	ld a, [wPlayerMonSpeedMod]
	cp 9
	jr nc, .hazeUseful
	jp .discourage4
.hazeUseful
	ld a, -3
	ret
.zero
	xor a
	ret

; carry set if the player's mon has more than half of its max HP
AIPlayerAboveHalf:
	ld a, [wBattleMonMaxHP]
	ld h, a
	ld a, [wBattleMonMaxHP + 1]
	ld l, a
	srl h
	rr l ; hl = max / 2
	ld a, [wBattleMonHP + 1]
	ld e, a
	ld a, [wBattleMonHP]
	ld d, a
	ld a, l
	sub e
	ld a, h
	sbc d ; carry if max / 2 < HP
	ret

; carry set if the player's mon has more than a third of its max HP
AIPlayerAboveThird:
	ld a, [wBattleMonHP]
	ld h, a
	ld d, a
	ld a, [wBattleMonHP + 1]
	ld l, a
	ld e, a
	add hl, hl
	add hl, de ; hl = HP * 3
	ld a, [wBattleMonMaxHP + 1]
	sub l
	ld a, [wBattleMonMaxHP]
	sbc h ; carry if max < HP * 3
	ret

; ---------------------------------------------------------------------------
; Matchups, switching and choosing the next mon
; ---------------------------------------------------------------------------

; scratch inside wBuffer
DEF wAIOffense   EQUS "wBuffer + 24" ; best damage score of the candidate's moves
DEF wAIDefense   EQUS "wBuffer + 25" ; best damage score of the player's STAB types against it
DEF wAIMoveIdx   EQUS "wBuffer + 26"
DEF wAIMonPtr    EQUS "wBuffer + 27" ; word: the candidate's party struct

; wDamage / 8, at most 60
AIDamageScore60:
	ld a, [wDamage]
	ld h, a
	ld a, [wDamage + 1]
	ld l, a
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld a, h
	and a
	jr nz, .cap
	ld a, l
	cp 61
	ret c
.cap
	ld a, 60
	ret

; a = type of an attack by the player's mon; the damage a power-80 move of that
; type would do to the enemy (whose types are whatever wEnemyMonType holds)
; is folded into wAIDefense
AIDefenseProbe:
	ld [wPlayerMoveType], a
	xor a
	ldh [hWhoseTurn], a
	ld [wDamageMultipliers], a
	ld [wDamage], a
	ld a, 80
	ld [wDamage + 1], a
	callfar AdjustDamageForMoveType
	call AIDamageScore60
	ld b, a
	ld a, [wAIDefense]
	cp b
	ret nc
	ld a, b
	ld [wAIDefense], a
	ret

; a = enemy party index
; output: a = how good that mon looks against the player's current mon,
;   64 + what its best move would do - what the player's types would do to it
;   (each capped at 60), so 64 is an even matchup and higher is better for the enemy.
; Borrows battle variables, the caller saves them (AISaveBattleScratch).
AIMatchupScore:
	ld hl, wEnemyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld a, h
	ld [wAIMonPtr], a
	ld a, l
	ld [wAIMonPtr + 1], a
	ld a, [wCurSpecies]
	push af
	ld a, [hl] ; species
	ld [wCurSpecies], a
	call GetMonHeader
	ld a, [wEnemyMonType]
	ld b, a
	ld a, [wEnemyMonType + 1]
	ld c, a
	push bc ; the active mon's own types
	ld a, [wMonHType1]
	ld [wEnemyMonType], a
	ld a, [wMonHType2]
	ld [wEnemyMonType + 1], a
	xor a
	ld [wAIOffense], a
	ld [wAIDefense], a
	ld [wAIMoveIdx], a
	ld a, 1
	ldh [hWhoseTurn], a
.offenseLoop
	ld a, [wAIMoveIdx]
	cp NUM_MOVES
	jr nc, .defense
	ld c, a
	ld b, 0
	ld a, [wAIMonPtr]
	ld h, a
	ld a, [wAIMonPtr + 1]
	ld l, a
	ld de, MON_MOVES
	add hl, de
	add hl, bc
	ld a, [hl]
	and a
	jr z, .defense
	call ReadMove
	ld hl, wAIMoveIdx
	inc [hl]
	ld a, [wEnemyMovePower]
	and a
	jr z, .offenseLoop
	ld [wDamage + 1], a
	xor a
	ld [wDamage], a
	ld [wDamageMultipliers], a
	callfar AdjustDamageForMoveType
	call AIDamageScore60
	ld b, a
	ld a, [wAIOffense]
	cp b
	jr nc, .offenseLoop
	ld a, b
	ld [wAIOffense], a
	jr .offenseLoop
.defense
	ld a, [wBattleMonType1]
	call AIDefenseProbe
	ld a, [wBattleMonType2]
	ld b, a
	ld a, [wBattleMonType1]
	cp b
	ld a, b
	call nz, AIDefenseProbe
	pop bc
	ld a, b
	ld [wEnemyMonType], a
	ld a, c
	ld [wEnemyMonType + 1], a
	pop af
	ld [wCurSpecies], a
	ld a, [wAIDefense]
	ld b, a
	ld a, [wAIOffense]
	add 64
	sub b
	ret

; output: d = number of enemy mons that have not fainted (the active one included)
AICountUnfainted:
	ld a, [wEnemyPartyCount]
	ld c, a
	ld hl, wEnemyMon1HP
	ld d, 0
.loop
	ld a, [hli]
	ld b, a
	ld a, [hld]
	or b
	jr z, .fainted
	inc d
.fainted
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec c
	jr nz, .loop
	ret

; output: a = party index of the unfainted mon (not the active one) with the best matchup
; against the player's mon, $ff if there is none; its score is left in wAITemp + 1
AIPickBestMon:
	xor a
	ld [wAITemp], a
	ld [wAITemp + 1], a
	ld a, $ff
	ld [wAIPickBestIdx], a
.loop
	ld a, [wEnemyPartyCount]
	ld b, a
	ld a, [wAITemp]
	cp b
	jr nc, .done
	ld b, a
	ld a, [wEnemyMonPartyPos]
	cp b
	jr z, .next ; the active mon
	ld a, b
	ld hl, wEnemyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld a, [hli]
	or [hl]
	jr z, .next ; fainted
	ld a, [wAITemp]
	call AIMatchupScore
	ld b, a
	ld a, [wAITemp + 1]
	cp b
	jr nc, .next ; ties keep the mon that comes first
	ld a, b
	ld [wAITemp + 1], a
	ld a, [wAITemp]
	ld [wAIPickBestIdx], a
.next
	ld hl, wAITemp
	inc [hl]
	jr .loop
.done
	ld a, [wAIPickBestIdx]
	ret

; Called before the enemy sends out its next mon after one fainted.
AIPickNextMon:
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	ld a, [wAISwitchTarget]
	and a
	ret nz
	call AIGetTier
	and a
	ret z
	cp AI_BOSS
	jr z, .choose
	call Random
	cp 75 percent
	ret nc ; a competent trainer sometimes just sends the next mon in line
.choose
	call AICountUnfainted
	ld a, d
	cp 2
	ret c ; only one choice
	call AISaveBattleScratch
	call AIPickBestMon
	ld b, a
	call AIRestoreBattleScratch
	ld a, b
	cp $ff
	ret z
	inc a
	ld [wAISwitchTarget], a
	ret

; Output: carry set if the trainer switched mons (which uses its turn).
AIConsiderSwitch:
	call AIGetTier
	ld b, a
	ld a, [wAISwitchCount]
	cp b
	jr nc, .no ; one voluntary switch per battle for AI_SMART, two for AI_BOSS
	call AICountUnfainted
	ld a, d
	cp 2
	jr c, .no
	call AIGetTier
	cp AI_BOSS
	ld a, 25 percent
	jr nz, .gate
	ld a, 40 percent
.gate
	ld b, a
	call Random
	cp b
	jr nc, .no
	call AICanKOFirst
	jr c, .no ; finish the fight instead
	ld a, [wEnemyMonPartyPos]
	call AIMatchupScore
	push af ; score of the active mon
	call AIPickBestMon
	ld b, a
	pop af
	ld c, a
	ld a, b
	cp $ff
	jr z, .no
	ld a, c
	cp 72
	jr nc, .no ; winning anyway
	add 12
	ld c, a
	ld a, [wAITemp + 1]
	cp c
	jr c, .no ; the other mon is not clearly better
	ld a, b
	inc a
	ld [wAISwitchTarget], a
	ld hl, wAISwitchCount
	inc [hl]
	jp SwitchEnemyMon
.no
	and a
	ret

; ---------------------------------------------------------------------------
; Items
; ---------------------------------------------------------------------------

; output: hl = the item kit of the current trainer class (heal item, cures status, X item)
AIGetKit:
	ld a, [wTrainerClass]
	dec a
	ld c, a
	add a
	add c
	ld c, a
	ld b, 0
	ld hl, TrainerAIItemKits
	add hl, bc
	ret

; carry set if the enemy's status is worth spending a Full Heal on
AIStatusWorthCuring:
	ld a, [wEnemyMonStatus]
	and SLP_MASK
	jr nz, .yes
	ld a, [wEnemyMonStatus]
	bit FRZ, a
	jr nz, .yes
	call AIGetTier
	cp AI_BOSS
	jr nz, .no
	ld a, [wEnemyMonStatus]
	bit PAR, a
	jr nz, .yes
	bit BRN, a
	jr z, .no
	ld a, PHYSICAL_MOVE
	ld hl, wEnemyMonMoves
	jp AIMovesHaveCategory
.yes
	scf
	ret
.no
	and a
	ret

; Heals or cures the active mon when that is the right call.
; output: carry set if an item was used
AISmartItems:
	ld a, [wAICount]
	and a
	ret z
	call AIGetKit
	ld a, [hli]
	ld [wAITemp], a
	ld a, [hl]
	and a
	jr z, .heal
	ld a, [wEnemyMonStatus]
	and a
	jr z, .heal
	call AIStatusWorthCuring
	jr nc, .heal
	jp AIUseFullHeal
.heal
	ld a, [wAITemp]
	and a
	ret z
	ld a, 3
	call AICheckIfHPBelowFraction
	ret nc ; plenty of HP left
	call AICanKOFirst
	jr nc, .consider
	and a ; it can finish the fight first: attack instead
	ret
.consider
	call AIGetTier
	cp AI_BOSS
	jr z, .use
	call Random
	cp 75 percent
	jr c, .use
	and a
	ret
.use
	ld a, [wAITemp]
	cp FULL_RESTORE
	jp z, AIUseFullRestore
	cp HYPER_POTION
	jp z, AIUseHyperPotion
	cp SUPER_POTION
	jp z, AIUseSuperPotion
	jp AIUsePotion

; Uses the class's X item when it would help.
; output: carry set if an item was used
AISmartXItem:
	ld a, [wAICount]
	and a
	ret z
	call AIGetKit
	inc hl
	inc hl
	ld a, [hl]
	and a
	ret z
	ld [wAITemp], a
	ld a, 2
	call AICheckIfHPBelowFraction
	jr nc, .healthy
	and a
	ret
.healthy
	call Random
	cp 30 percent
	jr c, .roll
	and a
	ret
.roll
	ld a, [wAITemp]
	cp X_ATTACK
	jr z, .attack
	cp X_DEFEND
	jr z, .defend
	cp X_SPEED
	jr z, .speed
; X Special
	ld a, [wEnemyMonSpAtkMod]
	cp 8
	jr nc, .no
	ld a, SPECIAL_MOVE
	ld hl, wEnemyMonMoves
	call AIMovesHaveCategory
	jr nc, .no
	jp AIUseXSpecial
.attack
	ld a, [wEnemyMonAttackMod]
	cp 8
	jr nc, .no
	ld a, PHYSICAL_MOVE
	ld hl, wEnemyMonMoves
	call AIMovesHaveCategory
	jr nc, .no
	jp AIUseXAttack
.defend
	ld a, [wEnemyMonDefenseMod]
	cp 8
	jr nc, .no
	jp AIUseXDefend
.speed
	ld a, [wEnemyMonSpeedMod]
	cp 8
	jr nc, .no
	ld a, [wBattleMonSpeed + 1]
	ld e, a
	ld a, [wBattleMonSpeed]
	ld d, a
	ld a, [wEnemyMonSpeed + 1]
	sub e
	ld a, [wEnemyMonSpeed]
	sbc d
	jr nc, .no ; already faster
	jp AIUseXSpeed
.no
	and a
	ret

; What AI_SMART and AI_BOSS trainers do each turn instead of the class routine.
SmartTrainerAI:
	ld a, [wAICount]
	inc a
	jr nz, .initialised
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerAIPointers
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	ld [wAICount], a
.initialised
	call AISmartItems
	ret c
	call AIConsiderSwitch
	ret c
	jp AISmartXItem

; a = move id; like ReadMoveNear, from another bank
ReadMove:
	push hl
	push bc
	ld c, a
	callfar ReadMoveFar
	pop bc
	pop hl
	ret
