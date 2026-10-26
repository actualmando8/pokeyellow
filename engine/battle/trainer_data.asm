; Trainer data that lives with the Moves and BaseStats tables

; a = move id; loads the move's data into wEnemyMoveNum..wEnemyMoveMaxPP
; preserves bc, de, hl
ReadMoveNear:
	push hl
	push de
	push bc
	dec a
	ld hl, Moves
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld de, wEnemyMoveNum
	call CopyData
	pop bc
	pop de
	pop hl
	ret

; same, for callers in other banks (callfar cannot pass a): move id in c
ReadMoveFar:
	ld a, c
	jr ReadMoveNear

INCLUDE "data/trainers/pic_pointers_money.asm"

INCLUDE "data/trainers/names.asm"

INCLUDE "engine/battle/misc.asm"

INCLUDE "engine/battle/read_trainer_party.asm"

INCLUDE "data/trainers/special_moves.asm"

INCLUDE "data/trainers/parties.asm"
