; Cries of the Pokémon that were added after Generation I.
;
; Their channel scripts were ported from Pokémon Polished Crystal (Gen II cries,
; plus its custom cries for Leafeon, Glaceon, Sylveon and Porygon-Z, and its
; "Siren" PSG approximations of the Gen IV+ cries).
;
; Unlike the Generation I cries (audio/sfx/cry*.asm) these are not duplicated in
; every audio bank: they are played through a placeholder cry (see PlayExtendedCry)
; and their channel data is read from this bank (see Audio1_GetNextMusicByte).
;
; Channel 7 (wave) data is not used.

ExtendedCryPointers:
; channel 5, channel 6, channel 7, channel 8
	dw ExtCry_Squirtle_Ch5, ExtCry_Squirtle_Ch6, ExtendedCryRet, ExtCry_Squirtle_Ch8 ; Squirtle
	dw ExtCry_Pichu_Ch5, ExtCry_Pichu_Ch6, ExtendedCryRet, ExtCry_Pichu_Ch8 ; Pichu
	dw ExtCry_Bellossom_Ch5, ExtCry_Bellossom_Ch6, ExtendedCryRet, ExtCry_Bellossom_Ch8 ; Bellossom
	dw ExtCry_Chikorita_Ch5, ExtCry_Chikorita_Ch6, ExtendedCryRet, ExtCry_Chikorita_Ch8 ; Chikorita
	dw ExtCry_Tyrogue_Ch5, ExtCry_Tyrogue_Ch6, ExtendedCryRet, ExtCry_Tyrogue_Ch8 ; Tyrogue
	dw ExtCry_Venonat_Ch5, ExtCry_Venonat_Ch6, ExtendedCryRet, ExtCry_Venonat_Ch8 ; Venonat
	dw ExtCry_Slowking_Ch5, ExtCry_Slowking_Ch6, ExtendedCryRet, ExtCry_Slowking_Ch8 ; Slowking
	dw ExtCry_Typhlosion_Ch5, ExtCry_Typhlosion_Ch6, ExtendedCryRet, ExtCry_Typhlosion_Ch8 ; Typhlosion
	dw ExtCry_Ampharos_Ch5, ExtCry_Ampharos_Ch6, ExtendedCryRet, ExtCry_Ampharos_Ch8 ; Ampharos
	dw ExtCry_Slugma_Ch5, ExtCry_Slugma_Ch6_Empty, ExtendedCryRet, ExtCry_Slugma_Ch8 ; Slugma
	dw ExtCry_Girafarig_Ch5, ExtCry_Girafarig_Ch6, ExtendedCryRet, ExtCry_Girafarig_Ch8 ; Girafarig
	dw ExtCry_Remoraid_Ch5, ExtCry_Remoraid_Ch6, ExtendedCryRet, ExtCry_Remoraid_Ch8 ; Remoraid
	dw ExtCry_Teddiursa_Ch5, ExtCry_Teddiursa_Ch6, ExtendedCryRet, ExtCry_Teddiursa_Ch8 ; Teddiursa
	dw ExtCry_Leafeon_Ch5, ExtCry_Leafeon_Ch6, ExtendedCryRet, ExtCry_Leafeon_Ch8 ; Leafeon
	dw ExtCry_Glaceon_Ch5, ExtCry_Glaceon_Ch6, ExtendedCryRet, ExtCry_Glaceon_Ch8_Empty ; Glaceon
	dw ExtCry_Sylveon_Ch5, ExtCry_Sylveon_Ch6, ExtendedCryRet, ExtCry_Sylveon_Ch8 ; Sylveon
	dw ExtCry_Magnezone_Ch5, ExtCry_Magnezone_Ch6, ExtendedCryRet, ExtCry_Magnezone_Ch8 ; Magnezone
	dw ExtCry_Electivire_Ch5, ExtCry_Electivire_Ch6, ExtendedCryRet, ExtCry_Electivire_Ch8 ; Electivire
	dw ExtCry_Magmortar_Ch5, ExtCry_Magmortar_Ch6, ExtendedCryRet, ExtCry_Magmortar_Ch8 ; Magmortar
	dw ExtCry_Rhyperior_Ch5, ExtCry_Rhyperior_Ch6, ExtendedCryRet, ExtCry_Rhyperior_Ch8 ; Rhyperior
	dw ExtCry_Tangrowth_Ch5, ExtCry_Tangrowth_Ch6, ExtendedCryRet, ExtCry_Tangrowth_Ch8 ; Tangrowth
	dw ExtCry_Lickilicky_Ch5, ExtCry_Lickilicky_Ch6, ExtendedCryRet, ExtCry_Lickilicky_Ch8 ; Lickilicky
	dw ExtCry_Porygon_Z_Ch5, ExtCry_Porygon_Z_Ch6, ExtendedCryRet, ExtCry_Porygon_Z_Ch8 ; Porygon_Z
	dw ExtCry_Happiny_Ch5, ExtCry_Happiny_Ch6_Empty, ExtendedCryRet, ExtCry_Happiny_Ch8 ; Happiny
	dw ExtCry_Munchlax_Ch5, ExtCry_Munchlax_Ch6, ExtendedCryRet, ExtCry_Munchlax_Ch8 ; Munchlax
	dw ExtCry_Mime_Jr_Ch5, ExtCry_Mime_Jr_Ch6, ExtendedCryRet, ExtCry_Mime_Jr_Ch8 ; Mime_Jr
	dw ExtCry_Annihilape_Ch5, ExtCry_Annihilape_Ch6, ExtendedCryRet, ExtCry_Annihilape_Ch8 ; Annihilape
	dw ExtCry_Marill_Ch5, ExtCry_Marill_Ch6, ExtendedCryRet, ExtCry_Marill_Ch8 ; Marill

ExtendedCryRet:
	sound_ret

; Squirtle
ExtCry_Squirtle_Ch5:
	duty_cycle_pattern 3, 3, 1, 0
	square_note 15, 15, 0, 1797
	square_note 10, 14, 0, 1792
	square_note 6, 11, 4, 1808
	square_note 4, 13, 3, 1792
	square_note 6, 11, 2, 1568
	square_note 8, 10, 1, 1572
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Squirtle_Ch6:
	duty_cycle_pattern 0, 2, 0, 2
	square_note 15, 11, 0, 1731
	square_note 10, 10, 0, 1729
	square_note 6, 8, 4, 1746
	square_note 4, 9, 3, 1729
	square_note 6, 8, 2, 1505
	square_note 8, 6, 1, 1512
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Squirtle_Ch8:
	noise_note 6, 14, 6, 76
	noise_note 15, 13, 6, 60
	noise_note 10, 12, 5, 74
	noise_note 1, 11, 2, 91
	noise_note 15, 12, 2, 76
	noise_note 0, 0, 8, 0
	sound_ret

; Pichu
ExtCry_Pichu_Ch5:
	duty_cycle_pattern 0, 0, 0, 0
	pitch_sweep 15, 7
	square_note 2, 15, 8, 1933
	square_note 2, 15, 8, 1937
	pitch_sweep 15, -7
	square_note 2, 15, 8, 1965
	pitch_sweep 8, 8
	square_note 2, 15, 8, 1972
	pitch_sweep 15, 7
	square_note 2, 15, 8, 1976
	pitch_sweep 8, 8
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Pichu_Ch6:
	duty_cycle_pattern 0, 1, 0, 0
	square_note 2, 12, 8, 1901
	square_note 2, 12, 8, 1905
	square_note 2, 12, 8, 1933
	square_note 2, 12, 8, 1940
	square_note 2, 12, 8, 1944
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Pichu_Ch8:
	noise_note 2, 11, 8, 1
	noise_note 2, 11, 8, 25
	noise_note 2, 12, 8, 24
	noise_note 2, 11, 8, 16
	noise_note 8, 12, 2, 24
	noise_note 0, 0, 8, 0
	sound_ret

; Bellossom
ExtCry_Bellossom_Ch5:
	duty_cycle_pattern 0, 3, 2, 1
	pitch_sweep 15, -7
	square_note 2, 15, 8, 1824
	square_note 2, 15, 8, 1831
	square_note 2, 15, 8, 1920
	pitch_sweep 8, 8
	square_note 2, 15, 8, 1913
	square_note 4, 15, 8, 1856
	square_note 4, 15, 8, 1852
	pitch_sweep 15, -7
	square_note 8, 15, 1, 1847
	pitch_sweep 8, 8
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Bellossom_Ch6:
	duty_cycle_pattern 0, 2, 0, 2
	square_note 6, 11, 2, 1822
	square_note 5, 9, 2, 1913
	square_note 4, 8, 2, 1854
	square_note 8, 10, 1, 1845
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Bellossom_Ch8:
	noise_note 2, 6, 4, 127
	noise_note 2, 8, 4, 125
	noise_note 2, 10, 4, 111
	noise_note 2, 6, 4, 108
	noise_note 2, 9, 4, 111
	noise_note 2, 6, 1, 107
	noise_note 0, 0, 8, 0
	sound_ret

; Chikorita
ExtCry_Chikorita_Ch5:
	; pitch_offset 32 baked in as a -200 frequency shift
ExtCry_Chikorita_Ch6_Shifted:
	duty_cycle_pattern 0, 2, 0, 1
	square_note 2, 12, 8, 1401
	square_note 2, 4, 8, 1401
	square_note 6, 15, 8, 1736
	square_note 4, 15, 8, 1734
	square_note 4, 15, 1, 1731
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Chikorita_Ch6:
	duty_cycle_pattern 0, 2, 0, 1
	square_note 2, 12, 8, 1601
	square_note 2, 4, 8, 1601
	square_note 6, 15, 8, 1936
	square_note 4, 15, 8, 1934
	square_note 4, 15, 1, 1931
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Chikorita_Ch8:
	noise_note 4, 9, 1, 16
	noise_note 8, 9, 4, 3
	noise_note 0, 0, 8, 0
	sound_ret

; Tyrogue
ExtCry_Tyrogue_Ch5:
	duty_cycle_pattern 3, 1, 0, 2
	square_note 3, 15, 8, 1712
	square_note 1, 15, 8, 1701
	square_note 1, 15, 8, 1693
	square_note 7, 15, 1, 1674
	square_note 3, 15, 8, 1846
	square_note 3, 15, 8, 1824
	square_note 15, 15, 2, 1806
	square_note 4, 5, 2, 1806
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Tyrogue_Ch6:
	duty_cycle_pattern 0, 2, 1, 3
ExtCry_Tyrogue_branch_f3443:
	square_note 1, 15, 1, 1972
	sound_loop 8, ExtCry_Tyrogue_branch_f3443
ExtCry_Tyrogue_branch_f344b:
	square_note 1, 12, 1, 1936
	sound_loop 3, ExtCry_Tyrogue_branch_f344b
ExtCry_Tyrogue_branch_f3453:
	square_note 1, 11, 1, 1933
	sound_loop 2, ExtCry_Tyrogue_branch_f3453
	square_note 15, 9, 2, 1941
	square_note 0, 0, 2, 1941
	sound_ret
ExtCry_Tyrogue_Ch8:
ExtCry_Tyrogue_branch_f3460:
	noise_note 0, 15, 1, 40
	sound_loop 4, ExtCry_Tyrogue_branch_f3460
	noise_note 0, 9, 1, 73
	noise_note 1, 10, 8, 74
	noise_note 0, 14, 1, 75
	noise_note 5, 13, 2, 79
	noise_note 3, 12, 2, 78
	noise_note 3, 11, 2, 77
	noise_note 15, 10, 3, 76
	noise_note 4, 5, 3, 76
	noise_note 0, 0, 8, 0
	sound_ret

; Venonat
ExtCry_Venonat_Ch5:
	duty_cycle_pattern 3, 3, 0, 0
	square_note 6, 15, 7, 1856
	square_note 12, 14, 6, 1860
	square_note 6, 13, 5, 1872
	square_note 4, 12, 3, 1888
	square_note 3, 12, 3, 1920
	square_note 8, 13, 1, 1952
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Venonat_Ch6:
	duty_cycle_pattern 0, 0, 2, 2
	square_note 6, 12, 7, 1793
	square_note 11, 11, 6, 1794
	square_note 6, 10, 5, 1809
	square_note 4, 9, 3, 1825
	square_note 3, 10, 3, 1857
	square_note 8, 9, 1, 1890
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Venonat_Ch8:
	noise_note 3, 14, 2, 60
	noise_note 8, 13, 6, 76
	noise_note 5, 13, 4, 60
	noise_note 12, 12, 7, 76
	noise_note 2, 14, 2, 60
	noise_note 8, 13, 1, 44
	noise_note 0, 0, 8, 0
	sound_ret

; Slowking
ExtCry_Slowking_Ch5:
	duty_cycle_pattern 0, 3, 0, 3
	square_note 2, 15, 1, 1360
	square_note 2, 15, 1, 1328
	square_note 2, 15, 1, 1296
	square_note 2, 15, 2, 1616
	square_note 2, 15, 2, 1600
	square_note 2, 15, 2, 1584
	square_note 15, 15, 2, 1360
	square_note 0, 0, 2, 1360
	sound_ret
ExtCry_Slowking_Ch6:
	duty_cycle_pattern 3, 3, 0, 2
	square_note 4, 14, 1, 1568
	square_note 5, 14, 2, 1280
	square_note 6, 14, 1, 1568
	square_note 2, 14, 1, 1312
	square_note 15, 14, 2, 1280
	square_note 0, 0, 2, 1280
	sound_ret
ExtCry_Slowking_Ch8:
	noise_note 2, 8, -2, 93
	noise_note 2, 9, -2, 76
	noise_note 5, 9, -2, 93
	noise_note 2, 9, -2, 77
	noise_note 2, 9, -2, 75
	noise_note 2, 9, -2, 77
	noise_note 2, 9, -2, 95
	noise_note 15, 11, 2, 111
	noise_note 0, 3, 2, 111
	noise_note 0, 0, 8, 0
	sound_ret

; Typhlosion
ExtCry_Typhlosion_Ch5:
ExtCry_Typhlosion_Teddiursa_Ch5:
	duty_cycle_pattern 0, 1, 0, 2
ExtCry_Typhlosion_branch_f3286:
	square_note 3, 12, 1, 1937
	sound_loop 3, ExtCry_Typhlosion_branch_f3286
ExtCry_Typhlosion_branch_f328e:
	square_note 3, 13, 1, 1201
	sound_loop 6, ExtCry_Typhlosion_branch_f328e
ExtCry_Typhlosion_branch_f3296:
	square_note 1, 13, 1, 1169
	square_note 1, 11, 1, 1105
	sound_loop 6, ExtCry_Typhlosion_branch_f3296
ExtCry_Typhlosion_branch_f32a2:
	square_note 1, 10, 3, 1137
	square_note 1, 8, 1, 1089
	sound_loop 6, ExtCry_Typhlosion_branch_f32a2
ExtCry_Typhlosion_branch_f32ae:
	square_note 1, 4, 1, 1057
	square_note 1, 2, 1, 1025
	sound_loop 4, ExtCry_Typhlosion_branch_f32ae
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Typhlosion_Ch6:
ExtCry_Typhlosion_Teddiursa_Ch6:
	duty_cycle_pattern 1, 3, 2, 0
	square_note 8, 9, -1, 1856
	square_note 8, 7, -1, 1862
	square_note 15, 15, 6, 1933
	square_note 0, 13, 6, 1933
	square_note 8, 15, 8, 1937
	square_note 8, 15, 8, 1933
	square_note 8, 15, 8, 1927
	square_note 15, 14, 2, 1923
	square_note 8, 6, 2, 1923
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Typhlosion_Ch8:
	noise_note 15, 10, 6, 22
	noise_note 0, 8, 6, 22
	noise_note 15, 9, 8, 61
	noise_note 8, 9, 8, 61
	noise_note 15, 9, 8, 92
	noise_note 15, 9, 8, 92
	noise_note 0, 9, 8, 92
	noise_note 15, 7, 5, 95
	noise_note 15, 4, 5, 95
	noise_note 0, 1, 5, 95
	noise_note 0, 0, 8, 0
	sound_ret

; Ampharos
ExtCry_Ampharos_Ch5:
	duty_cycle_pattern 3, 1, 3, 2
ExtCry_Ampharos_branch_f3355:
	square_note 1, 12, 1, 1312
	square_note 1, 10, 1, 1056
	sound_loop 4, ExtCry_Ampharos_branch_f3355
	duty_cycle_pattern 0, 0, 0, 0
	square_note 4, 7, 8, 1888
	square_note 4, 7, 8, 1840
	square_note 15, 12, 2, 1056
	square_note 8, 1, 2, 1056
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Ampharos_Ch6:
	duty_cycle_pattern 0, 3, 0, 2
	square_note 8, 15, 8, 1792
	square_note 7, 15, 8, 1824
	square_note 4, 15, 8, 1936
	square_note 4, 15, 8, 1888
	square_note 15, 15, 2, 1840
	square_note 8, 4, 2, 1840
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Ampharos_Ch8:
	noise_note 4, 8, 8, 109
	noise_note 4, 13, 8, 104
	noise_note 7, 12, 8, 105
	noise_note 4, 9, 8, 58
	noise_note 4, 9, 8, 60
	noise_note 15, 13, 2, 91
	noise_note 8, 5, 2, 91
	noise_note 0, 0, 8, 0
	sound_ret

; Slugma
ExtCry_Slugma_Ch5:
	duty_cycle_pattern 2, 1, 0, 1
	square_note 12, 15, 2, 1958
	square_note 4, 15, 8, 1968
	square_note 4, 14, 8, 944
	square_note 6, 15, 8, 928
	square_note 8, 14, 1, 656
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Slugma_Ch6_Empty:
	sound_ret
ExtCry_Slugma_Ch8:
	noise_note 12, 11, 2, 80
	noise_note 8, 10, 8, 96
	noise_note 6, 10, 8, 91
	noise_note 8, 10, 1, 92
	noise_note 0, 0, 8, 0
	sound_ret

; Girafarig
ExtCry_Girafarig_Ch5:
	duty_cycle_pattern 1, 1, 1, 1
	; pitch_offset 4 baked in as a -111 frequency shift
	sound_loop 0, ExtCry_Girafarig_branch_f31af_Shifted
ExtCry_Girafarig_branch_f31af_Shifted:
	square_note 4, 6, 8, 1769
	square_note 2, 14, 8, 1777
	square_note 2, 14, 8, 1784
	square_note 2, 14, 8, 1789
	square_note 7, 15, 1, 1784
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Girafarig_Ch6:
	duty_cycle_pattern 1, 0, 0, 1
ExtCry_Girafarig_branch_f31af:
	square_note 4, 6, 8, 1880
	square_note 2, 14, 8, 1888
	square_note 2, 14, 8, 1895
	square_note 2, 14, 8, 1900
	square_note 7, 15, 1, 1895
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Girafarig_Ch8:
	noise_note 4, 2, -1, 0
	noise_note 2, 3, -1, 1
	noise_note 2, 4, -1, 2
	noise_note 2, 5, -1, 1
	noise_note 7, 4, 1, 0
	noise_note 0, 0, 8, 0
	sound_ret

; Remoraid
ExtCry_Remoraid_Ch5:
	duty_cycle_pattern 0, 0, 0, 0
	sound_loop 0, ExtCry_Remoraid_branch_f32e9
ExtCry_Remoraid_branch_f32e9:
	square_note 4, 15, 8, 1969
	square_note 4, 15, 8, 1968
	square_note 4, 4, 8, 1967
ExtCry_Remoraid_Mantine_branch_f32f5:
	square_note 4, 15, 8, 1970
	square_note 4, 15, 8, 1971
	square_note 4, 4, 8, 1972
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Remoraid_Ch6:
	duty_cycle_pattern 3, 3, 0, 2
	square_note 4, 15, 8, 1970
	square_note 4, 15, 8, 1969
	square_note 4, 2, 8, 1968
ExtCry_Remoraid_Mantine_branch_f3310:
	square_note 4, 15, 8, 1972
	square_note 4, 15, 8, 1974
	square_note 4, 4, 8, 1976
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Remoraid_Ch8:
	noise_note 4, 8, 8, 5
	noise_note 4, 8, 8, 4
	noise_note 4, 3, 8, 3
ExtCry_Remoraid_Mantine_branch_f3326:
	noise_note 4, 8, 8, 5
	noise_note 4, 8, 8, 4
	noise_note 4, 8, 7, 4
	noise_note 0, 0, 8, 0
	sound_ret

; Teddiursa
ExtCry_Teddiursa_Ch5:
	duty_cycle_pattern 0, 1, 0, 2
ExtCry_Teddiursa_Typhlosion_branch_f3286:
	square_note 3, 12, 1, 1937
	sound_loop 3, ExtCry_Teddiursa_Typhlosion_branch_f3286
ExtCry_Teddiursa_Typhlosion_branch_f328e:
	square_note 3, 13, 1, 1201
	sound_loop 6, ExtCry_Teddiursa_Typhlosion_branch_f328e
ExtCry_Teddiursa_Typhlosion_branch_f3296:
	square_note 1, 13, 1, 1169
	square_note 1, 11, 1, 1105
	sound_loop 6, ExtCry_Teddiursa_Typhlosion_branch_f3296
ExtCry_Teddiursa_Typhlosion_branch_f32a2:
	square_note 1, 10, 3, 1137
	square_note 1, 8, 1, 1089
	sound_loop 6, ExtCry_Teddiursa_Typhlosion_branch_f32a2
ExtCry_Teddiursa_Typhlosion_branch_f32ae:
	square_note 1, 4, 1, 1057
	square_note 1, 2, 1, 1025
	sound_loop 4, ExtCry_Teddiursa_Typhlosion_branch_f32ae
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Teddiursa_Ch6:
	duty_cycle_pattern 1, 3, 2, 0
	square_note 8, 9, -1, 1856
	square_note 8, 7, -1, 1862
	square_note 15, 15, 6, 1933
	square_note 0, 15, 6, 1933
	square_note 8, 15, 8, 1937
	square_note 8, 15, 8, 1933
	square_note 8, 15, 8, 1927
	square_note 15, 14, 2, 1923
	square_note 8, 13, 2, 1923
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Teddiursa_Ch8:
	noise_note 8, 10, 6, 58
	noise_note 8, 10, 1, 90
	noise_note 0, 0, 8, 0
	sound_ret

; Leafeon
ExtCry_Leafeon_Ch5:
	duty_cycle_pattern 1, 1, 1, 0
	square_note 2, 13, -5, 1600
	square_note 1, 14, 4, 1726
	square_note 3, 15, 7, 1894
	square_note 1, 14, 0, 1890
	square_note 1, 13, 0, 1886
	square_note 1, 13, 0, 1882
	square_note 1, 12, 0, 1877
	square_note 1, 14, 0, 1877
	square_note 1, 9, 0, 1873
	square_note 1, 7, 0, 1869
	square_note 2, 5, 2, 1862
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Leafeon_Ch6:
	duty_cycle_pattern 0, 0, 1, 0
	square_note 2, 7, -8, 1798
	square_note 1, 6, 4, 1798
	square_note 2, 7, 4, 1858
	square_note 15, 8, 5, 1860
	square_note 0, 1, 5, 1860
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Leafeon_Ch8:
ExtCry_Leafeon_p1:
	noise_note 4, 5, 5, 145
	noise_note 1, 3, 3, 214
	noise_note 3, 4, 3, 213
	noise_note 6, 3, 7, 212
	sound_loop 2, ExtCry_Leafeon_p1
	noise_note 4, 3, 5, 145
	noise_note 2, 4, 3, 214
	noise_note 4, 3, 5, 212
	noise_note 0, 0, 8, 0
	sound_ret

; Glaceon
ExtCry_Glaceon_Ch5:
	duty_cycle_pattern 2, 2, 2, 1
	square_note 3, 12, -3, 1856
	square_note 2, 14, 3, 1860
	square_note 5, 13, -3, 1833
	square_note 1, 14, -3, 1856
	square_note 1, 15, 0, 1860
	square_note 1, 13, 0, 1859
	square_note 1, 12, 0, 1864
	square_note 1, 9, 0, 1888
	square_note 1, 10, 0, 1920
	square_note 2, 12, 4, 1931
	pitch_sweep 3, -7
	square_note 10, 8, 6, 1931
	pitch_sweep 8, 8
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Glaceon_Ch6:
	duty_cycle_pattern 0, 0, 2, 2
	square_note 2, 8, 2, 1924
	square_note 2, 8, 7, 1966
	square_note 3, 8, 7, 1958
	square_note 1, 0, 7, 1930
	square_note 5, 8, 3, 1930
	square_note 1, 0, 7, 1930
	square_note 1, 8, 7, 1924
	square_note 1, 8, 7, 1940
	square_note 3, 8, 2, 1958
	square_note 2, 8, 3, 1957
	square_note 7, 8, 2, 1946
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Glaceon_Ch8_Empty:
	sound_ret

; Sylveon
ExtCry_Sylveon_Ch5:
	duty_cycle_pattern 0, 0, 0, 0
	pitch_sweep 6, 7
	square_note 1, 14, -3, 1920
	pitch_sweep 8, 8
	square_note 2, 15, 5, 2000
	pitch_sweep 3, -7
	square_note 5, 12, 4, 2000
	pitch_sweep 8, 8
	square_note 1, 10, 0, 1950
	square_note 1, 13, -1, 1953
	square_note 1, 14, 0, 1959
	square_note 1, 14, 0, 1968
	square_note 1, 14, 0, 1975
	square_note 1, 14, 0, 1981
	square_note 1, 14, 0, 1988
	square_note 7, 12, 1, 1991
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Sylveon_Ch6:
	duty_cycle_pattern 0, 1, 1, 0
	square_note 2, 11, -3, 1933
	square_note 9, 13, 5, 2000
	square_note 15, 7, 4, 1951
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Sylveon_Ch8:
	noise_note 12, 9, 0, 24
	noise_note 12, 0, -5, 17
	noise_note 15, 4, 0, 17
	noise_note 0, 4, 0, 17
	noise_note 15, 4, 0, 18
	noise_note 0, 4, 0, 18
	noise_note 8, 4, 0, 19
	noise_note 15, 3, 7, 19
	noise_note 10, 1, 7, 19
	noise_note 0, 0, 8, 0
	sound_ret

; Magnezone
ExtCry_Magnezone_Ch5:
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1970
	square_note 0, 12, 8, 1832
	square_note 0, 9, 8, 1860
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 9, 8, 1885
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 9, 8, 1975
	square_note 0, 6, 8, 2015
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 9, 8, 1844
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1900
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1831
	square_note 0, 12, 8, 1859
	square_note 0, 12, 8, 1882
	square_note 0, 12, 8, 1895
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 9, 8, 1908
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 9, 8, 1955
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1891
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 15, 8, 1806
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1836
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1873
	square_note 0, 12, 8, 1892
	square_note 0, 12, 8, 1902
	square_note 0, 9, 8, 1850
	square_note 0, 15, 8, 1882
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1966
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1829
	square_note 0, 15, 8, 1862
	square_note 0, 15, 8, 1878
	square_note 0, 12, 8, 1894
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 12, 8, 1895
	square_note 0, 12, 8, 1638
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1906
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 12, 8, 1777
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1849
	square_note 0, 12, 8, 1865
	square_note 0, 15, 8, 1877
	square_note 0, 12, 8, 1886
	square_note 0, 12, 8, 1617
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1897
	square_note 0, 15, 8, 1965
	square_note 0, 15, 8, 1966
	square_note 0, 12, 8, 1966
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1871
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 15, 8, 1779
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1559
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1962
	square_note 0, 12, 8, 1961
	square_note 0, 12, 8, 1820
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1837
	square_note 0, 12, 8, 1860
	square_note 0, 12, 8, 1859
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1540
	square_note 0, 12, 8, 1967
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1892
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 9, 8, 1927
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 9, 8, 1830
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 12, 8, 1845
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1889
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 15, 8, 1524
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1788
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1828
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1845
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1867
	square_note 0, 15, 8, 1855
	square_note 0, 12, 8, 1851
	square_note 0, 12, 8, 1860
	square_note 0, 15, 8, 1962
	square_note 0, 15, 8, 1967
	square_note 0, 12, 8, 1966
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 12, 8, 1948
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1875
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1969
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 9, 8, 1904
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 6, 8, 1988
	square_note 0, 9, 8, 1986
	square_note 0, 9, 8, 1990
	square_note 1, 6, 8, 1990
	square_note 0, 6, 8, 1989
	square_note 0, 6, 8, 1985
	square_note 0, 6, 8, 1966
	square_note 0, 6, 8, 1988
	square_note 0, 6, 8, 1989
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 6, 8, 1909
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 3, 8, 1930
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1988
	square_note 0, 3, 8, 1989
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 3, 8, 1911
	duty_cycle_pattern 2, 2, 2, 2
	square_note 6, 3, 8, 1966
	square_note 6, 0, 8, 0
	sound_ret
ExtCry_Magnezone_Ch6:
	square_note 15, 0, 8, 0
	square_note 1, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 11, 8, 1967
	square_note 0, 8, 8, 1966
	square_note 10, 0, 8, 0
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 13, 8, 1932
	square_note 0, 11, 8, 1932
	square_note 1, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1936
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 11, 8, 1933
	square_note 8, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 11, 8, 1947
	square_note 0, 9, 8, 1945
	square_note 0, 9, 8, 1966
	square_note 0, 11, 8, 1966
	square_note 2, 0, 8, 0
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 8, 8, 1967
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1966
	square_note 0, 13, 8, 1965
	square_note 0, 11, 8, 1966
	square_note 1, 9, 8, 1947
	square_note 1, 0, 8, 0
	square_note 0, 11, 8, 1967
	square_note 0, 9, 8, 1967
	square_note 0, 15, 8, 1967
	square_note 1, 11, 8, 1908
	square_note 0, 0, 8, 0
	square_note 0, 11, 8, 1966
	square_note 0, 11, 8, 1967
	square_note 0, 0, 8, 0
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 11, 8, 1940
	square_note 0, 8, 8, 1941
	square_note 1, 0, 8, 0
	square_note 0, 9, 8, 1965
	square_note 0, 6, 8, 1965
	square_note 2, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 8, 8, 1966
	square_note 0, 6, 8, 1966
	square_note 0, 8, 8, 1966
	square_note 7, 0, 8, 0
	square_note 1, 2, 8, 1982
	square_note 7, 0, 8, 0
	sound_ret
ExtCry_Magnezone_Ch8:
	noise_note 1, 11, 8, 92
	noise_note 1, 7, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 1, 7, 8, 92
	noise_note 1, 15, 8, 92
	noise_note 0, 7, 8, 92
	noise_note 3, 11, 8, 92
	noise_note 3, 15, 8, 92
	noise_note 2, 11, 8, 92
	noise_note 4, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 4, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 10, 15, 8, 92
	noise_note 1, 11, 8, 92
	noise_note 1, 15, 8, 92
	noise_note 1, 11, 8, 92
	noise_note 0, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 0, 7, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 0, 15, 8, 92
	noise_note 1, 11, 8, 92
	noise_note 0, 15, 8, 92
	noise_note 1, 11, 8, 92
	noise_note 1, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 3, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 1, 15, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 0, 7, 8, 92
	noise_note 0, 11, 8, 92
	noise_note 11, 7, 8, 92
	noise_note 8, 4, 8, 92
	noise_note 5, 0, 8, 0
	sound_ret

; Electivire
ExtCry_Electivire_Ch5:
	duty_cycle_pattern 2, 2, 2, 2
	square_note 2, 14, 8, 1320
	square_note 2, 14, 8, 1551
	square_note 2, 12, 8, 1820
	square_note 2, 14, 8, 1816
	square_note 2, 13, 8, 1812
	square_note 2, 13, 8, 1760
	square_note 2, 13, 8, 1763
	square_note 2, 13, 8, 1800
	square_note 2, 12, 8, 1793
	square_note 2, 12, 8, 1790
	square_note 2, 13, 8, 1787
	square_note 2, 12, 8, 1783
	square_note 2, 9, 8, 1779
	square_note 2, 7, 8, 1775
	square_note 2, 9, 8, 1773
	square_note 2, 9, 8, 1768
	square_note 2, 6, 8, 1768
	square_note 2, 9, 8, 1764
	square_note 2, 8, 8, 1762
	square_note 2, 7, 8, 1756
	square_note 2, 7, 8, 1755
	square_note 2, 8, 8, 1750
	square_note 2, 7, 8, 1748
	square_note 2, 5, 8, 1744
	square_note 5, 4, 8, 1743
	square_note 2, 3, 8, 1743
	square_note 1, 3, 8, 1738
	square_note 0, 2, 8, 1738
	square_note 2, 2, 8, 1734
	square_note 2, 1, 8, 1734
	square_note 0, 1, 8, 1732
	square_note 4, 0, 8, 0
	square_note 7, 0, 8, 0
	sound_ret
ExtCry_Electivire_Ch6:
	duty_cycle_pattern 1, 2, 1, 2
	square_note 2, 14, 8, 1440
	square_note 2, 14, 8, 1597
	square_note 2, 12, 8, 1706
	square_note 2, 14, 8, 1689
	square_note 2, 12, 8, 1727
	square_note 2, 14, 8, 1783
	square_note 2, 14, 8, 1774
	square_note 2, 14, 8, 1840
	square_note 2, 12, 8, 1828
	square_note 2, 11, 8, 1731
	square_note 2, 12, 8, 1872
	square_note 2, 11, 8, 1871
	square_note 2, 9, 8, 1697
	square_note 2, 6, 8, 1870
	square_note 2, 9, 8, 1863
	square_note 2, 9, 8, 1684
	square_note 2, 5, 8, 1682
	square_note 2, 9, 8, 1679
	square_note 2, 7, 8, 1678
	square_note 2, 6, 8, 1667
	square_note 2, 7, 8, 1865
	square_note 2, 7, 8, 1662
	square_note 2, 6, 8, 1864
	square_note 2, 5, 8, 1652
	square_note 8, 4, 8, 1650
	square_note 0, 4, 8, 1643
	square_note 1, 3, 8, 1643
	square_note 0, 2, 8, 1638
	square_note 4, 1, 8, 1638
	square_note 0, 1, 8, 1635
	square_note 4, 0, 8, 0
	square_note 7, 0, 8, 0
	sound_ret
ExtCry_Electivire_Ch8:
	noise_note 5, 14, 8, 68
	noise_note 5, 14, 3, 84
	noise_note 5, 11, 8, 52
	noise_note 5, 13, 3, 52
	noise_note 5, 12, 8, 52
	noise_note 5, 13, 1, 52
	noise_note 5, 11, 2, 52
	noise_note 5, 11, 1, 52
	noise_note 5, 9, 8, 52
	noise_note 5, 9, 1, 52
	noise_note 5, 9, 2, 52
	noise_note 5, 8, 2, 100
	noise_note 11, 2, 8, 92
	noise_note 0, 2, 5, 92
	noise_note 4, 1, 5, 92
	noise_note 0, 1, 8, 92
	noise_note 4, 0, 8, 92
	noise_note 5, 0, 8, 76
	noise_note 1, 0, 8, 44
	sound_ret

; Magmortar
ExtCry_Magmortar_Ch5:
	duty_cycle_pattern 2, 2, 2, 2
	square_note 2, 14, 8, 1938
	square_note 2, 14, 8, 1821
	square_note 2, 14, 8, 1586
	square_note 2, 13, 8, 1614
	square_note 2, 14, 8, 1835
	square_note 2, 13, 8, 1848
	square_note 2, 14, 8, 1584
	square_note 2, 13, 8, 1812
	square_note 2, 13, 8, 1793
	square_note 2, 13, 8, 1748
	square_note 2, 11, 8, 1837
	square_note 2, 10, 8, 1609
	square_note 2, 12, 8, 315
	square_note 2, 12, 8, 864
	square_note 2, 14, 8, 1698
	square_note 2, 13, 8, 955
	square_note 2, 14, 8, 883
	square_note 2, 11, 8, 655
	square_note 2, 7, 8, 1061
	square_note 2, 7, 8, 178
	square_note 1, 6, 8, 178
	square_note 0, 5, 8, 178
	square_note 0, 6, 8, 1182
	square_note 1, 5, 8, 1182
	square_note 1, 6, 8, 883
	square_note 0, 5, 8, 883
	square_note 1, 5, 8, 469
	square_note 0, 4, 8, 469
	square_note 1, 2, 8, 626
	square_note 0, 1, 8, 626
	square_note 1, 0, 8, 0
	sound_ret
ExtCry_Magmortar_Ch6:
	duty_cycle_pattern 1, 2, 1, 2
	square_note 2, 13, 8, 1903
	square_note 2, 13, 8, 1647
	square_note 2, 13, 8, 1625
	square_note 2, 12, 8, 1760
	square_note 2, 13, 8, 1855
	square_note 2, 12, 8, 1914
	square_note 2, 13, 8, 1919
	square_note 2, 12, 8, 1884
	square_note 2, 12, 8, 1928
	square_note 2, 12, 8, 1873
	square_note 2, 11, 8, 1751
	square_note 2, 9, 8, 1647
	square_note 2, 12, 8, 1593
	square_note 2, 12, 8, 1722
	square_note 2, 13, 8, 1589
	square_note 2, 13, 8, 1148
	square_note 2, 13, 8, 1100
	square_note 2, 9, 8, 1003
	square_note 2, 7, 8, 1489
	square_note 2, 6, 8, 1338
	square_note 1, 6, 8, 1484
	square_note 0, 5, 8, 1484
	square_note 1, 5, 8, 1378
	square_note 0, 4, 8, 1378
	square_note 1, 6, 8, 1100
	square_note 0, 5, 8, 1100
	square_note 0, 5, 8, 843
	square_note 1, 4, 8, 843
	square_note 0, 2, 8, 938
	square_note 1, 1, 8, 938
	square_note 1, 0, 8, 0
	sound_ret
ExtCry_Magmortar_Ch8:
	noise_note 5, 15, 8, 76
	noise_note 5, 14, 8, 68
	noise_note 5, 15, 4, 68
	noise_note 5, 15, 3, 68
	noise_note 5, 14, 8, 76
	noise_note 5, 11, 2, 76
	noise_note 11, 12, 8, 108
	noise_note 5, 11, 2, 124
	noise_note 5, 8, 2, 124
	noise_note 1, 8, 8, 124
	noise_note 1, 7, 8, 124
	noise_note 1, 6, 8, 124
	noise_note 0, 7, 8, 124
	noise_note 0, 6, 8, 124
	noise_note 1, 5, 8, 124
	noise_note 0, 4, 8, 124
	noise_note 0, 3, 8, 124
	noise_note 1, 2, 1, 124
	noise_note 1, 1, 1, 124
	noise_note 0, 0, 1, 124
	sound_ret

; Rhyperior
ExtCry_Rhyperior_Ch5:
	duty_cycle_pattern 1, 1, 0, 0
	square_note 2, 15, 8, 1764
	square_note 2, 15, 8, 1781
	square_note 2, 14, 8, 1483
	square_note 2, 14, 8, 1775
	square_note 2, 14, 8, 1532
	square_note 2, 14, 8, 0
	square_note 2, 13, 8, 1674
	square_note 2, 14, 8, 1268
	square_note 2, 15, 8, 1775
	square_note 2, 14, 8, 1774
	square_note 2, 13, 8, 1773
	square_note 2, 14, 8, 1758
	square_note 2, 14, 8, 120
	square_note 2, 14, 8, 1762
	square_note 2, 14, 8, 1768
	square_note 2, 14, 8, 1641
	square_note 2, 15, 8, 1648
	square_note 2, 14, 8, 1909
	square_note 2, 14, 8, 1901
	square_note 2, 14, 8, 0
	square_note 2, 12, 8, 1483
	square_note 1, 5, 8, 1596
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Rhyperior_Ch6:
	duty_cycle_pattern 0, 1, 0, 1
	square_note 2, 12, 8, 1839
	square_note 2, 12, 8, 1946
	square_note 2, 11, 8, 1914
	square_note 2, 11, 8, 1944
	square_note 2, 11, 8, 1943
	square_note 2, 11, 8, 1784
	square_note 2, 10, 8, 1690
	square_note 2, 11, 8, 1685
	square_note 2, 12, 8, 1682
	square_note 2, 11, 8, 1928
	square_note 2, 11, 8, 1893
	square_note 2, 12, 8, 1661
	square_note 2, 11, 8, 1268
	square_note 2, 11, 8, 1676
	square_note 2, 11, 8, 1811
	square_note 2, 11, 8, 1910
	square_note 2, 12, 8, 1909
	square_note 2, 11, 8, 1874
	square_note 2, 12, 8, 1869
	square_note 2, 12, 8, 1876
	square_note 2, 9, 8, 1620
	square_note 1, 4, 8, 1636
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Rhyperior_Ch8:
	noise_note 5, 14, 3, 92
	noise_note 5, 14, 4, 92
	noise_note 5, 14, 5, 76
	noise_note 5, 14, 4, 68
	noise_note 5, 13, 3, 68
	noise_note 5, 14, 8, 84
	noise_note 5, 14, 8, 84
	noise_note 5, 14, 8, 68
	noise_note 5, 13, 8, 68
	noise_note 5, 13, 5, 92
	noise_note 4, 10, 1, 92
	noise_note 0, 0, 8, 0
	sound_ret

; Tangrowth
ExtCry_Tangrowth_Ch5:
	square_note 0, 0, 8, 0
	duty_cycle_pattern 1, 1, 1, 1
	square_note 1, 1, 8, 813
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 2, 8, 861
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 846
	square_note 0, 4, 8, 968
	square_note 0, 4, 8, 1094
	square_note 0, 5, 8, 1133
	square_note 0, 6, 8, 1140
	square_note 1, 7, 8, 1154
	square_note 0, 8, 8, 1221
	square_note 0, 8, 8, 1103
	square_note 0, 9, 8, 1001
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 10, 8, 813
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 11, 8, 904
	square_note 0, 12, 8, 956
	square_note 0, 12, 8, 1174
	square_note 0, 12, 8, 1337
	square_note 0, 12, 8, 1330
	square_note 0, 13, 8, 1181
	square_note 0, 13, 8, 846
	square_note 0, 13, 8, 813
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 13, 8, 813
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 13, 8, 813
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 13, 8, 1205
	square_note 0, 10, 8, 1227
	square_note 0, 11, 8, 1293
	square_note 0, 11, 8, 1310
	square_note 0, 13, 8, 1318
	square_note 0, 12, 8, 1314
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 4, 8, 1357
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 5, 8, 813
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 7, 8, 1001
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 8, 8, 813
	square_note 0, 7, 8, 1298
	square_note 0, 8, 8, 1103
	square_note 0, 6, 8, 1126
	square_note 0, 5, 8, 1205
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 10, 8, 956
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 8, 8, 813
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 4, 8, 1322
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 3, 8, 813
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1330
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 4, 8, 1354
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 3, 8, 1350
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 4, 8, 1591
	square_note 0, 4, 8, 1094
	square_note 0, 6, 8, 1655
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 6, 8, 1094
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 8, 8, 1444
	square_note 0, 10, 8, 956
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 9, 8, 1276
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 5, 8, 1510
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 7, 8, 1472
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 9, 8, 904
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 9, 8, 1001
	square_note 0, 7, 8, 1086
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 9, 8, 1668
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 3, 8, 1289
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 8, 8, 1060
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1704
	square_note 0, 13, 8, 1022
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 3, 8, 1435
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 11, 8, 1379
	square_note 1, 9, 8, 1258
	square_note 0, 9, 8, 1464
	square_note 0, 6, 8, 1447
	square_note 0, 6, 8, 1472
	square_note 0, 7, 8, 1470
	square_note 0, 7, 8, 1462
	square_note 0, 8, 8, 1430
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 6, 8, 1133
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 2, 8, 1205
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Tangrowth_Ch6:
	square_note 0, 0, 8, 0
	square_note 0, 0, 8, 0
	square_note 0, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 1, 8, 1503
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 1, 8, 1216
	square_note 0, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 2, 8, 1348
	square_note 0, 2, 8, 1376
	square_note 0, 3, 8, 1376
	square_note 1, 3, 8, 1385
	square_note 0, 4, 8, 1299
	square_note 0, 4, 8, 1353
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 4, 8, 1293
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 5, 8, 1416
	square_note 0, 0, 8, 0
	square_note 0, 5, 8, 1268
	square_note 0, 6, 8, 1247
	square_note 0, 6, 8, 1420
	square_note 0, 6, 8, 1409
	square_note 0, 6, 8, 1247
	square_note 0, 5, 8, 1216
	square_note 0, 0, 8, 0
	square_note 0, 6, 8, 1416
	square_note 0, 6, 8, 1274
	square_note 0, 5, 8, 1281
	square_note 0, 5, 8, 1305
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 5, 8, 1371
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 5, 8, 1485
	square_note 0, 6, 8, 1491
	square_note 0, 6, 8, 1488
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 2, 8, 1517
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1463
	square_note 0, 3, 8, 1293
	square_note 0, 3, 8, 1466
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 3, 8, 1380
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1353
	square_note 0, 2, 8, 1367
	square_note 0, 2, 8, 1468
	square_note 0, 4, 8, 1480
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 4, 8, 1191
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 2, 8, 1299
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 2, 8, 1466
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 2, 8, 1735
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 2, 8, 1716
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 2, 8, 1741
	square_note 0, 2, 8, 1723
	square_note 0, 2, 8, 1712
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 3, 8, 1645
	square_note 0, 3, 8, 1568
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1578
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 5, 8, 1544
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 4, 8, 1566
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 2, 8, 1531
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1656
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 4, 8, 1706
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 5, 8, 1735
	square_note 0, 4, 8, 1721
	square_note 0, 6, 8, 1685
	square_note 0, 2, 8, 1704
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 3, 8, 1706
	square_note 0, 6, 8, 1663
	square_note 0, 6, 8, 1606
	square_note 0, 2, 8, 1590
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 5, 8, 1581
	square_note 0, 4, 8, 1573
	square_note 0, 5, 8, 1520
	square_note 0, 5, 8, 1594
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1642
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 2, 8, 1666
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1548
	square_note 0, 3, 8, 1542
	square_note 0, 4, 8, 1513
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 3, 8, 1447
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 1, 8, 1416
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Tangrowth_Ch8:
	noise_note 2, 0, 8, 75
	noise_note 6, 1, 8, 75
	noise_note 2, 2, 8, 75
	noise_note 0, 1, 8, 75
	noise_note 1, 2, 8, 75
	noise_note 0, 3, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 1, 3, 8, 75
	noise_note 4, 2, 8, 75
	noise_note 1, 3, 8, 75
	noise_note 2, 2, 8, 75
	noise_note 0, 3, 8, 75
	noise_note 1, 1, 8, 75
	noise_note 2, 2, 8, 75
	noise_note 2, 1, 8, 75
	noise_note 0, 3, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 2, 1, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 0, 1, 8, 75
	noise_note 2, 2, 8, 75
	noise_note 0, 1, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 1, 3, 8, 75
	noise_note 1, 2, 8, 75
	noise_note 1, 3, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 0, 3, 8, 75
	noise_note 0, 1, 8, 75
	noise_note 0, 2, 8, 75
	noise_note 1, 4, 8, 75
	noise_note 0, 1, 8, 75
	noise_note 1, 2, 8, 75
	noise_note 0, 3, 8, 75
	noise_note 5, 2, 8, 75
	noise_note 1, 1, 8, 75
	noise_note 0, 0, 8, 75
	sound_ret

; Lickilicky
ExtCry_Lickilicky_Ch5:
	duty_cycle_pattern 1, 1, 0, 0
	square_note 2, 6, 8, 1839
	square_note 2, 10, 8, 1794
	square_note 2, 3, 8, 1774
	square_note 2, 7, 8, 1828
	square_note 2, 7, 8, 1771
	square_note 2, 12, 8, 0
	square_note 2, 13, 8, 120
	square_note 2, 12, 8, 559
	square_note 2, 13, 8, 1815
	square_note 2, 12, 8, 1882
	square_note 2, 11, 8, 1870
	square_note 2, 11, 8, 1852
	square_note 2, 11, 8, 1868
	square_note 2, 12, 8, 1874
	square_note 2, 10, 8, 1881
	square_note 2, 11, 8, 1866
	square_note 2, 10, 8, 1832
	square_note 2, 12, 8, 1586
	square_note 2, 10, 8, 1665
	square_note 2, 11, 8, 1570
	square_note 1, 12, 8, 1703
	square_note 0, 11, 8, 1703
	square_note 0, 13, 8, 956
	square_note 0, 12, 8, 956
	square_note 0, 11, 8, 956
	square_note 0, 8, 8, 0
	square_note 1, 7, 8, 0
	square_note 0, 5, 8, 0
	square_note 1, 4, 8, 0
	square_note 4, 2, 8, 0
	square_note 2, 1, 8, 0
	square_note 0, 0, 8, 0
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Lickilicky_Ch6:
	duty_cycle_pattern 0, 2, 0, 2
	square_note 2, 7, 8, 1914
	square_note 2, 11, 8, 1808
	square_note 2, 3, 8, 1815
	square_note 2, 7, 8, 1737
	square_note 2, 8, 8, 1701
	square_note 2, 12, 8, 623
	square_note 2, 15, 8, 711
	square_note 2, 12, 8, 1847
	square_note 2, 14, 8, 1730
	square_note 2, 12, 8, 1821
	square_note 2, 12, 8, 1835
	square_note 2, 12, 8, 1954
	square_note 2, 12, 8, 1856
	square_note 2, 12, 8, 1864
	square_note 2, 11, 8, 1870
	square_note 2, 12, 8, 1886
	square_note 2, 11, 8, 1878
	square_note 2, 12, 8, 1631
	square_note 2, 11, 8, 1636
	square_note 2, 12, 8, 1617
	square_note 1, 14, 8, 1583
	square_note 0, 13, 8, 1583
	square_note 0, 14, 8, 1174
	square_note 0, 13, 8, 1174
	square_note 0, 12, 8, 1174
	square_note 1, 8, 8, 0
	square_note 0, 7, 8, 0
	square_note 0, 5, 8, 1208
	square_note 1, 4, 8, 1208
	square_note 2, 2, 8, 0
	square_note 1, 2, 8, 1229
	square_note 2, 1, 8, 1229
	square_note 0, 0, 8, 0
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Lickilicky_Ch8:
	noise_note 5, 9, 3, 92
	noise_note 5, 10, 2, 76
	noise_note 5, 15, 2, 100
	noise_note 5, 13, 2, 116
	noise_note 5, 14, 2, 92
	noise_note 5, 14, 8, 76
	noise_note 5, 10, 8, 76
	noise_note 5, 11, 8, 76
	noise_note 11, 13, 8, 92
	noise_note 1, 13, 8, 84
	noise_note 1, 12, 8, 84
	noise_note 0, 11, 8, 84
	noise_note 0, 10, 8, 84
	noise_note 0, 7, 2, 100
	noise_note 1, 6, 2, 100
	noise_note 2, 5, 2, 100
	noise_note 0, 3, 8, 116
	noise_note 3, 2, 8, 116
	noise_note 0, 1, 8, 116
	noise_note 1, 1, 1, 116
	noise_note 1, 0, 1, 116
	sound_ret

; Porygon_Z
ExtCry_Porygon_Z_Ch5:
	duty_cycle_pattern 3, 1, 3, 3
	square_note 15, 15, 5, 1992
	square_note 2, 10, 5, 1992
	square_note 2, 13, 5, 1935
	square_note 2, 13, 5, 1939
	square_note 2, 14, 5, 1943
	square_note 2, 14, 5, 1947
	square_note 2, 14, 5, 1952
	square_note 5, 15, 1, 1993
	square_note 15, 10, 6, 2005
	square_note 14, 6, 6, 2005
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Porygon_Z_Ch6:
	duty_cycle_pattern 1, 0, 0, 3
	square_note 6, 0, 1, 1340
	square_note 4, 11, 5, 1340
	square_note 10, 13, 2, 1600
	square_note 8, 13, 2, 1650
	square_note 3, 9, 3, 1340
	square_note 4, 14, 2, 1834
	square_note 15, 13, 3, 1873
	square_note 4, 5, 3, 1873
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Porygon_Z_Ch8:
	noise_note 10, 10, -1, 41
	noise_note 8, 10, 2, 46
	noise_note 10, 10, 2, 44
	noise_note 8, 10, 2, 46
	noise_note 12, 10, 2, 42
	noise_note 2, 10, 2, 46
	noise_note 15, 11, 4, 37
	noise_note 12, 7, 4, 37
	noise_note 11, 11, 2, 14
	noise_note 11, 10, 2, 13
	noise_note 12, 10, 2, 13
	noise_note 3, 11, -1, 13
	noise_note 2, 8, 1, 13
	noise_note 5, 10, 2, 13
	noise_note 10, 11, 1, 13
	noise_note 0, 0, 8, 0
	sound_ret

; Happiny
ExtCry_Happiny_Ch5:
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1928
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1923
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1972
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1895
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 9, 8, 1977
	square_note 0, 15, 8, 1975
	square_note 0, 15, 8, 1974
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1900
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1898
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 3, 8, 1950
	square_note 0, 6, 8, 1974
	square_note 0, 6, 8, 1975
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 9, 8, 1904
	square_note 2, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1983
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1919
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1923
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1947
	square_note 0, 3, 8, 1968
	square_note 0, 12, 8, 1968
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 12, 8, 1937
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1962
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 12, 8, 1882
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 6, 8, 1960
	square_note 0, 3, 8, 1966
	square_note 0, 3, 8, 1987
	square_note 0, 3, 8, 1992
	square_note 0, 3, 8, 1993
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Happiny_Ch6_Empty:
	sound_ret
ExtCry_Happiny_Ch8:
	noise_note 7, 0, 8, 0
	noise_note 0, 8, 8, 92
	noise_note 2, 0, 8, 0
	noise_note 0, 8, 8, 92
	noise_note 3, 0, 8, 0
	noise_note 0, 8, 8, 92
	noise_note 0, 15, 8, 92
	noise_note 0, 8, 8, 92
	noise_note 0, 0, 8, 0
	noise_note 1, 15, 8, 92
	noise_note 0, 8, 8, 92
	noise_note 6, 0, 8, 0
	sound_ret

; Munchlax
ExtCry_Munchlax_Ch5:
	duty_cycle_pattern 1, 1, 0, 0
	square_note 2, 13, 8, 323
	square_note 2, 14, 8, 176
	square_note 2, 14, 8, 654
	square_note 2, 11, 8, 683
	square_note 2, 12, 8, 737
	square_note 2, 12, 8, 368
	square_note 2, 14, 8, 683
	square_note 2, 13, 8, 176
	square_note 0, 12, 8, 559
	square_note 0, 10, 8, 559
	square_note 0, 9, 8, 559
	square_note 0, 4, 8, 559
	square_note 0, 3, 8, 559
	square_note 0, 2, 8, 559
	square_note 0, 1, 8, 62
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Munchlax_Ch6:
	duty_cycle_pattern 0, 2, 0, 2
	square_note 2, 12, 8, 1617
	square_note 2, 13, 8, 0
	square_note 2, 13, 8, 1566
	square_note 2, 9, 8, 1583
	square_note 2, 11, 8, 1583
	square_note 2, 12, 8, 1739
	square_note 2, 13, 8, 1722
	square_note 2, 13, 8, 0
	square_note 0, 11, 8, 1737
	square_note 0, 9, 8, 1737
	square_note 0, 8, 8, 1737
	square_note 1, 3, 8, 1658
	square_note 0, 2, 8, 1658
	square_note 0, 1, 8, 711
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Munchlax_Ch8:
	noise_note 5, 12, 8, 108
	noise_note 5, 11, 1, 100
	noise_note 5, 11, 8, 100
	noise_note 5, 12, 8, 100
	noise_note 0, 10, 1, 100
	noise_note 0, 9, 1, 100
	noise_note 0, 7, 1, 100
	noise_note 0, 6, 1, 100
	noise_note 0, 4, 1, 100
	noise_note 0, 3, 1, 100
	noise_note 0, 1, 1, 100
	noise_note 0, 0, 1, 100
	sound_ret

; Mime_Jr
ExtCry_Mime_Jr_Ch5:
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 15, 8, 1923
	duty_cycle_pattern 1, 1, 1, 1
	square_note 1, 15, 8, 1923
	duty_cycle_pattern 0, 0, 0, 0
	square_note 1, 15, 8, 1827
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 14, 8, 1808
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 2, 8, 1865
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 1876
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1889
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 15, 8, 1903
	duty_cycle_pattern 1, 1, 1, 1
	square_note 0, 15, 8, 1897
	square_note 0, 15, 8, 1892
	square_note 0, 14, 8, 1942
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 15, 8, 1971
	square_note 0, 15, 8, 1969
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 15, 8, 2008
	square_note 0, 15, 8, 1946
	square_note 0, 15, 8, 1944
	square_note 0, 15, 8, 1947
	square_note 0, 15, 8, 1959
	square_note 0, 7, 8, 1960
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 1, 8, 1969
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 8, 8, 1946
	square_note 0, 15, 8, 1944
	square_note 0, 15, 8, 1947
	square_note 0, 13, 8, 1959
	square_note 0, 5, 8, 1960
	duty_cycle_pattern 0, 0, 0, 0
	square_note 0, 1, 8, 1969
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 6, 8, 1946
	square_note 0, 11, 8, 1944
	square_note 0, 11, 8, 1947
	square_note 0, 8, 8, 1959
	square_note 0, 2, 8, 1960
	square_note 0, 1, 8, 1959
	square_note 0, 2, 8, 1946
	square_note 0, 5, 8, 1945
	square_note 0, 5, 8, 1947
	square_note 0, 2, 8, 1963
	square_note 0, 1, 8, 1960
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Mime_Jr_Ch6:
	square_note 2, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1993
	square_note 0, 13, 8, 1993
	square_note 3, 0, 8, 0
	square_note 0, 15, 8, 1972
	square_note 0, 13, 8, 1977
	square_note 5, 0, 8, 0
	square_note 0, 12, 8, 1980
	square_note 0, 10, 8, 1979
	square_note 0, 13, 8, 1951
	square_note 0, 3, 8, 1953
	duty_cycle_pattern 3, 3, 3, 3
	square_note 0, 2, 8, 1959
	square_note 0, 0, 8, 0
	duty_cycle_pattern 2, 2, 2, 2
	square_note 0, 12, 8, 1980
	square_note 0, 8, 8, 1979
	square_note 0, 12, 8, 1952
	square_note 0, 3, 8, 1954
	square_note 1, 0, 8, 0
	square_note 0, 10, 8, 1980
	square_note 0, 8, 8, 1979
	square_note 3, 0, 8, 0
	square_note 0, 3, 8, 1980
	square_note 0, 3, 8, 1979
	square_note 2, 0, 8, 0
	sound_ret
ExtCry_Mime_Jr_Ch8:
	noise_note 0, 0, 8, 0
	noise_note 0, 14, 8, 100
	noise_note 0, 15, 8, 100
	noise_note 0, 13, 8, 100
	noise_note 0, 11, 8, 100
	noise_note 0, 10, 8, 100
	noise_note 0, 2, 8, 100
	noise_note 0, 10, 8, 100
	noise_note 0, 9, 8, 100
	noise_note 0, 8, 8, 100
	noise_note 0, 14, 8, 100
	noise_note 0, 12, 8, 100
	noise_note 0, 10, 8, 100
	noise_note 0, 12, 8, 100
	noise_note 0, 9, 8, 100
	noise_note 0, 12, 8, 100
	noise_note 0, 7, 8, 100
	noise_note 0, 4, 8, 100
	noise_note 0, 7, 8, 100
	noise_note 0, 6, 8, 100
	noise_note 0, 5, 8, 100
	noise_note 0, 1, 8, 100
	noise_note 0, 3, 8, 100
	noise_note 0, 4, 8, 100
	noise_note 0, 6, 8, 100
	noise_note 0, 5, 8, 100
	noise_note 0, 4, 8, 100
	noise_note 0, 1, 8, 100
	noise_note 0, 2, 8, 100
	noise_note 0, 3, 8, 100
	noise_note 0, 4, 8, 100
	noise_note 0, 3, 8, 100
	noise_note 0, 2, 8, 100
	noise_note 0, 0, 8, 0
	noise_note 0, 1, 8, 100
	noise_note 2, 2, 8, 100
	noise_note 1, 0, 8, 0
	sound_ret

; Annihilape
ExtCry_Annihilape_Ch5:
	duty_cycle_pattern 1, 1, 0, 0
	square_note 2, 13, 8, 1047
	square_note 2, 15, 8, 1055
	square_note 2, 15, 8, 1047
	square_note 5, 14, 8, 1047
	square_note 2, 14, 8, 1038
	square_note 2, 13, 8, 1038
	square_note 2, 13, 8, 1079
	square_note 2, 13, 8, 1071
	square_note 2, 13, 8, 1087
	square_note 2, 12, 8, 1389
	square_note 2, 11, 8, 641
	square_note 2, 11, 8, 1071
	square_note 2, 11, 8, 1055
	square_note 2, 11, 8, 1029
	square_note 2, 12, 8, 1071
	square_note 2, 12, 8, 1122
	square_note 2, 12, 8, 618
	square_note 2, 12, 8, 662
	square_note 2, 11, 8, 1020
	square_note 2, 11, 8, 1079
	square_note 2, 9, 8, 1055
	square_note 2, 10, 8, 1394
	square_note 2, 11, 8, 1603
	square_note 2, 9, 8, 1425
	square_note 2, 10, 8, 1618
	square_note 2, 9, 8, 740
	square_note 2, 8, 8, 1588
	square_note 1, 8, 8, 1543
	square_note 0, 7, 8, 1543
	square_note 2, 6, 8, 1560
	square_note 2, 5, 8, 641
	square_note 1, 4, 8, 740
	square_note 0, 3, 8, 740
	square_note 1, 3, 8, 722
	square_note 1, 2, 8, 722
	square_note 1, 1, 8, 722
	square_note 0, 1, 8, 758
	square_note 1, 0, 8, 0
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Annihilape_Ch6:
	duty_cycle_pattern 0, 1, 0, 1
	square_note 2, 14, 8, 1690
	square_note 5, 15, 8, 1478
	square_note 2, 15, 8, 1466
	square_note 5, 15, 8, 1470
	square_note 2, 14, 8, 1453
	square_note 2, 15, 8, 1493
	square_note 2, 14, 8, 1486
	square_note 2, 14, 8, 1493
	square_note 2, 12, 8, 1610
	square_note 2, 12, 8, 1628
	square_note 2, 12, 8, 1622
	square_note 2, 11, 8, 1632
	square_note 2, 11, 8, 1731
	square_note 2, 12, 8, 1751
	square_note 2, 12, 8, 1730
	square_note 2, 12, 8, 1747
	square_note 2, 12, 8, 1733
	square_note 2, 12, 8, 1737
	square_note 2, 12, 8, 1738
	square_note 2, 9, 8, 1695
	square_note 2, 11, 8, 1771
	square_note 2, 11, 8, 1867
	square_note 2, 9, 8, 1858
	square_note 2, 9, 8, 1874
	square_note 2, 9, 8, 1875
	square_note 2, 8, 8, 1742
	square_note 0, 9, 8, 1689
	square_note 1, 8, 8, 1689
	square_note 2, 6, 8, 1679
	square_note 2, 5, 8, 1617
	square_note 1, 4, 8, 1682
	square_note 0, 3, 8, 1682
	square_note 1, 3, 8, 1691
	square_note 0, 2, 8, 1691
	square_note 1, 2, 8, 1333
	square_note 0, 1, 8, 1333
	square_note 0, 1, 8, 1104
	square_note 1, 0, 8, 0
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Annihilape_Ch8:
	noise_note 5, 14, 8, 84
	noise_note 5, 14, 4, 84
	noise_note 5, 11, 8, 84
	noise_note 5, 10, 8, 84
	noise_note 5, 10, 5, 84
	noise_note 5, 10, 8, 84
	noise_note 5, 9, 8, 100
	noise_note 5, 13, 8, 84
	noise_note 5, 14, 5, 84
	noise_note 5, 14, 8, 108
	noise_note 5, 15, 2, 76
	noise_note 5, 14, 8, 76
	noise_note 5, 11, 8, 76
	noise_note 2, 13, 8, 76
	noise_note 1, 12, 8, 76
	noise_note 0, 11, 8, 76
	noise_note 0, 9, 4, 92
	noise_note 2, 8, 4, 92
	noise_note 1, 7, 4, 92
	noise_note 0, 6, 8, 100
	noise_note 2, 5, 8, 100
	noise_note 1, 4, 8, 100
	noise_note 1, 3, 2, 100
	noise_note 2, 2, 2, 100
	noise_note 0, 1, 2, 100
	noise_note 0, 1, 8, 100
	noise_note 2, 0, 8, 100
	sound_ret

; Marill
ExtCry_Marill_Ch5:
	duty_cycle_pattern 0, 2, 0, 2
	square_note 2, 8, 8, 1752
	square_note 8, 14, 2, 1760
	square_note 2, 6, 1, 1765
	square_note 2, 14, 8, 1728
	square_note 2, 14, 8, 1720
	square_note 2, 13, 8, 1712
	square_note 8, 12, 1, 1706
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Marill_Ch6:
	duty_cycle_pattern 1, 2, 0, 3
	square_note 2, 6, 8, 1713
	square_note 5, 12, 1, 1721
	square_note 5, 9, -1, 1888
	square_note 2, 11, 8, 1676
	square_note 2, 10, 8, 1668
	square_note 10, 9, 2, 1659
	square_note 0, 0, 8, 0
	sound_ret
ExtCry_Marill_Ch8:
	noise_note 1, 9, -1, 108
	noise_note 1, 9, 2, 92
	noise_note 10, 6, 2, 76
	noise_note 2, 6, 8, 106
	noise_note 2, 6, 8, 107
	noise_note 10, 6, 2, 108
	noise_note 0, 0, 8, 0
	sound_ret
