GetCryData_::
; Loads the cry data of species a (see CryData) into wFrequencyModifier(Hi)
; and wTempoModifier(Hi), and returns the sound id to play for it in b.
; For an extended cry, the sound id is that of a placeholder cry, and
; wExtendedCryPending is set to make PlaySound start the real one (see
; PlayExtendedCry).
	dec a
	ld c, a
	ld b, 0
	ld h, b
	ld l, c
	add hl, hl
	add hl, hl
	add hl, bc ; hl = species * 5
	ld de, CryData
	add hl, de
	ld a, [hli]
	ld b, a ; cry id
	ld a, [hli]
	ld [wFrequencyModifier], a
	ld a, [hli]
	ld [wFrequencyModifierHi], a
	ld a, [hli]
	ld [wTempoModifier], a
	ld a, [hl]
	ld [wTempoModifierHi], a
	xor a
	ld [wCryDataBank], a
	ld [wExtendedCryPending], a
	bit 7, b ; EXTENDED_CRY
	jr z, .gotCryID
	ld a, b
	and ~EXTENDED_CRY
	inc a
	ld [wExtendedCryPending], a
	ld b, 0 ; the placeholder is the first cry
.gotCryID
	; Cry headers have 3 channels,
	; and start from index CRY_SFX_START,
	; so add 3 times the cry id.
	ld a, b
	add a
	add b
	add CRY_SFX_START
	ld b, a
	ret

PlayExtendedCry::
; Plays sound b (this is what PlaySound does, via DetermineAudioFunction).
; If wExtendedCryPending is set and the sound is the placeholder cry, plays
; the extended cry in its place: the placeholder starts as usual, and then its
; channel pointers are replaced by pointers to the extended cry's data in this
; bank. (Audio1_GetNextMusicByte reads channel data from wCryDataBank for as
; long as a cry is playing.)
	ld a, [wExtendedCryPending]
	and a
	jp z, DetermineAudioFunction
	ld c, a
	xor a
	ld [wExtendedCryPending], a
	ld a, b
	cp CRY_SFX_START
	jp nz, DetermineAudioFunction
	; The sound engine runs from the VBlank interrupt; it must not see the
	; placeholder's channels before they are replaced.
	ldh a, [rIE]
	push af
	xor a
	ldh [rIE], a
	push bc
	call DetermineAudioFunction
	pop bc
	ld a, [wChannelSoundIDs + CHAN5]
	cp CRY_SFX_START
	jr nz, .done ; a higher priority sound is playing on the channel
	; hl = ExtendedCryPointers + (c - 1) * 8
	dec c
	ld b, 0
	ld h, b
	ld l, c
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, ExtendedCryPointers
	add hl, de
	ld de, wChannelCommandPointers + CHAN5 * 2
	ld bc, 4 * 2
	call CopyData
	ld a, BANK(ExtendedCryPointers)
	ld [wCryDataBank], a
.done
	pop af
	ldh [rIE], a
	ret
