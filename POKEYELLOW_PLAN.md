# Pokémon Yellow Decomp: Mod Plan

Fork: https://github.com/actualmando8/pokeyellow (pret/pokeyellow base)
Decisions so far: saves may break; new species limited to Kanto-related evolutions/babies; no trade evolutions; X-Items mart replaced; economy reworked.

Items marked **[verified]** were checked against your fork's source. Items marked **[check]** are my expectation from the Gen 1 decomps and need confirming when you reach them.

---

## Phase 0: Setup
- [ ] Install RGBDS and follow `INSTALL.md`; `make` must produce a ROM matching `roms.sha1` before any edits.
- [ ] Emulator with debugger (BGB or mGBA) and a changelog file in the repo.
- [ ] Commit in small, single-purpose steps so each feature is revertable.

## Phase 1: Bug fixes and QoL
- [ ] Work through `docs/bugs_and_glitches.md`; each entry has a ready-made fix.
- [ ] QoL tweaks (text speed default, etc.) go here, one per commit.

## Phase 1b: Economy
- [ ] **Buy prices:** halve every entry in `data/items/prices.asm` (BCD values, e.g. `bcd3 2100` becomes `bcd3 1050`). Also `data/items/tm_prices.asm` and `data/items/vending_prices.asm` if wanted. **[verified]**
- [ ] **Sell price: correction to what I said earlier.** The game already sells at half the buy price, via `hHalveItemPrices` in `home/list_menu.asm` and `engine/events/pokemart.asm`. **[verified]** If you halve buy prices and touch nothing else, sell prices fall to one quarter of the originals. To keep the original sell values, clear `hHalveItemPrices` in the sell path (`pokemart.asm`, around line 80) so selling pays the new buy price. That is a one-line change, and since buy equals sell there's no profit loop.
- [ ] **Prize money:** `data/trainers/pic_pointers_money.asm`, shown as `pic_money` entries; payout is base money x level of the last enemy mon. **[verified]** Multiply each base by about 1.5 to 2x.

## Phase 2: Stones and evolution changes

### New items: Sun Stone and Ice Stone
Evolution stones are data-driven: the party menu and item code scan each species' evolution entries for a matching stone. **[verified]** So new stones need no new logic, only registration.
- [ ] `constants/item_constants.asm`: there are unused slots `ITEM_2C` ($2C) and `ITEM_32` ($32). **[verified]** Rename them `SUN_STONE` and `ICE_STONE` instead of adding new IDs.
- [ ] `data/items/names.asm`: names.
- [ ] `data/items/prices.asm`: prices (match the other stones after halving, about 1050; or a bit higher).
- [ ] `data/items/key_items.asm`: `dbit FALSE` entries (stones are not key items). **[verified]**
- [ ] `data/items/use_party.asm`: add both to the list of party-use items. **[verified]**
- [ ] `engine/items/item_effects.asm`: point both table entries at `ItemUseEvoStone`. **[verified]**
- [ ] Moon Stone currently has price 0 (found in Mt. Moon, not sold). Give it a price. **[verified]**

### Shops (`data/items/marts.asm`)
- [ ] Celadon 4F clerk keeps `POKE_DOLL, FIRE_STONE, THUNDER_STONE, WATER_STONE, LEAF_STONE`. **[verified]**
- [ ] Celadon 5F clerk 1 (currently X Accuracy, Guard Spec., Dire Hit, X Attack/Defend/Speed/Special) becomes `MOON_STONE, SUN_STONE, ICE_STONE`. **[verified]**
- [ ] 5F clerk 2 (vitamins) is unchanged.

### Evolution table (`data/pokemon/evos_moves.asm`)
Entry formats **[verified]**: `db EVOLVE_LEVEL, level, SPECIES`, `db EVOLVE_ITEM, item, 1, SPECIES`, `db EVOLVE_TRADE, 1, SPECIES`.
- [ ] Replace the four Gen 1 trade evolutions with level evolutions. Existing `EVOLVE_TRADE` entries (Kadabra, Graveler, Machoke, Haunter) are at about lines 631, 644, 670 and 1723. **[verified]** Same byte size, so swap the constant and set a level:
  - Alakazam 36, Golem 40, Machamp 40, Gengar 38 (placeholders).
- [ ] Eevee (`EeveeEvosMoves`, currently Fire/Thunder/Water Stone): add Espeon (Sun Stone), Umbreon (Moon Stone), Leafeon (Leaf Stone), Glaceon (Ice Stone). **[verified]**
- [ ] Sylveon: new evolution type `EVOLVE_MOVE` (level up while knowing Charm). Needs one new constant, evolution-engine handling in `engine/pokemon/evos_moves.asm`, and Eevee must be able to learn Charm. Charm must be Fairy-type.
- [ ] Tyrogue: new type `EVOLVE_STAT`, with Attack > Defense giving Hitmonlee, Attack < Defense giving Hitmonchan, equal giving Hitmontop. You said you'll handle this in code.
- [ ] Stone assignments for the other new lines:
  - Thunder Stone: Electivire, Magnezone, Porygon-Z
  - Fire Stone: Magmortar
  - Sun Stone: Espeon, Bellossom, Politoed, Slowking
  - Water Stone: Poliwrath stays on it, as it already is (`PoliwhirlEvosMoves`, line 1376). **[verified]**
- [ ] Slowpoke currently evolves to Slowbro at level 37 (`EVOLVE_LEVEL, 37`). **[verified]** Slowking uses the Sun Stone, so it must be used before 37. Add an NPC hint.
- [ ] Other level evolutions: Steelix 40, Scizor 40, Kingdra 45, Rhyperior 50, Tangrowth 40, Lickilicky 40, Blissey 40, Porygon2 30.
- [ ] Babies: Pichu 12, Cleffa 12, Igglybuff 12, Happiny 20, Munchlax 30, Mime Jr. 18, Elekid 30, Magby 30, Tyrogue 20.
- [ ] Rule: only one automatic level path per species; any second branch must be a stone.

## Phase 3: Types and the physical/special category

**Status: 3a and 3b are written and test-built (see `phase3_types_and_categories.patch`). 3c onward is still to do.**

Findings **[verified]**: damage calc decides physical vs special in exactly two places (`GetDamageVarsForPlayerAttack` and `GetDamageVarsForEnemyAttack` in `engine/battle/core.asm`), by comparing the move's type to `SPECIAL` ($14). The move struct is 6 bytes (`MOVE_LENGTH`) and is copied into WRAM, so adding a 7th byte would ripple through the WRAM layout. Instead, categories live in a separate table indexed by move ID, which changes no struct. There are 11 unused type slots ($09 to $13), not 20 as I said earlier.

- [x] **3a. New types.** STEEL $09, DARK $0A, FAIRY $0B in `constants/type_constants.asm`; names in `data/types/names.asm`; 38 Gen 6 chart entries in `data/types/type_matchups.asm`. Existing Gen 1 chart entries are untouched.
- [x] **3b. Category table.** `data/moves/categories.asm` (one byte per move: `PHYSICAL_MOVE`, `SPECIAL_MOVE`, `STATUS_MOVE`), `GetMoveCategory` routine in `core.asm`, both damage-calc hooks switched to it. Generated from the old type rule, so battle behavior is unchanged until you edit the table. Verified in the built ROM: all 165 moves match the old rule.
- [x] **3c. Move categories and types** (`phase3_moves_and_pokemon_types.patch`, test-built). Gen 4 categories: Fire Punch, Ice Punch, ThunderPunch, Vine Whip, Razor Leaf, Waterfall, Clamp, Crabhammer become physical; Gust, Razor Wind, Hyper Beam, SonicBoom, Swift, Tri Attack, Acid, Smog, Sludge, Night Shade become special. Types: Karate Chop Fighting, Gust Flying, Bite Dark. Not changed: Sand-Attack (a status move that would become Ground).
- [x] **3d. Retype Pokémon:** Clefairy, Clefable Fairy; Jigglypuff, Wigglytuff Normal/Fairy; Mr. Mime Psychic/Fairy; Magnemite, Magneton Electric/Steel.
- [ ] **3e. Decide on Gen 1 chart quirks.** Kept as-is for now: Ghost vs Psychic does no damage (a known bug), Bug and Poison are super effective on each other, Ice does not resist itself being hit by Fire. Fixes are in `docs/bugs_and_glitches.md`.
- [ ] **3f. Counter** should respond to the physical category, not Normal/Fighting type. Needs a look at the Counter effect code.
- [ ] **3g. AI** type matchup code (`AIGetTypeEffectiveness`) uses `TypeEffects` already, so new types work there; check move-choice routines in `trainer_ai.asm`.
- [ ] Optional: show the category on the move info screen (needs a small graphic and a tile).
- Space: the "Battle Core" bank has about 800 bytes free after 3b. Keep an eye on this.

## Phase 4: The one big struct overhaul (do together; breaks saves once)
- [x] **4a. Split Special into SpAtk/SpDef** (`phase4a_special_split.patch`, applies on top of patches 1–3, test-built, boots). Sp.Atk and Sp.Def share one stat-exp slot and one DV (Gen 2 style), so `NUM_STAT_EXP = NUM_STATS - 1`. Growth is Sp.Atk +1, Amnesia Sp.Def +2, Psychic lowers Sp.Def. Volcano Badge boosts both. Stack shrunk by 1 byte to fit WRAM0. Tested: stat formula vs vanilla (151 species), damage stat selection, Light Screen, crits, all 28 stage effects, badge boosts. Not yet tested: status screen render, new-game flow, stack depth margin (stack is 199 bytes).
  Original item: The base stat line is currently `hp atk def spd spc` (one Special). **[verified]** Touches: base stats files, party/box mon structs, stat calculation, stat experience, DVs, battle stat modifiers, the save layout.
- [x] **4b. Species expansion** (`phase4b_new_species.patch`, applies on top of 4a; generated by `gen_species.py`, checked by `test_species.py`). 31 new species (the 29 listed plus Elekid and Magby, which the plan needs), placed in unused internal index slots, dex numbers 152-182 appended after Mew. Each has base stats (Gen 4 values, split Sp.Atk/Sp.Def), types, growth, learnset, TM/HM list, cry, palette, party icon and Pokédex entry. **Art is a placeholder copy of a related species' sprite** until Phase 6. Baby species evolve into their adult forms; no existing species evolves into a new one yet. New sprites live in a new ROM bank ($40), flagged by the spare TM/HM bit; the ROM is now 2 MB; trade-animation graphics moved to bank $41; the stack shrank to 191 bytes (sampled depth was 63). Dex rating text still stops at 150-151.
  Original item (done above): past 151 (about +28 species); `NUM_POKEMON_INDEXES` is in `constants/pokemon_constants.asm`. **[verified]**
- [x] Pokédex flag arrays grow automatically (`flag_array NUM_POKEMON`).
- [ ] Add any new move or type fields here too.
- [ ] After this commit, re-test the save, load and boot flows end to end.

## Phase 4c: Evolutions (done, `phase4c_evolutions.patch`)
- [x] New evolution types: `EVOLVE_MOVE` (level up while knowing a move) and `EVOLVE_ATK_GT_DEF/LT_DEF/EQ_DEF` (Tyrogue). Both are 3-byte entries, so the existing table scanners still work. A stone used on a Pokémon now skips its level entries instead of abandoning it (Slowpoke has both).
- [x] Charm added (Fairy, Attack -2) just before Struggle; Eevee learns it at 26 and becomes Sylveon on level-up while knowing it.
- [x] Evolution lines: Golbat 40 Crobat, Onix 40 Steelix, Scyther 40 Scizor, Seadra 45 Kingdra, Porygon 30 Porygon2, Chansey 40 Blissey, Rhydon 50 Rhyperior, Tangela 40 Tangrowth, Lickitung 40 Lickilicky; Sun Stone: Gloom Bellossom, Poliwhirl Politoed, Slowpoke Slowking, Eevee Espeon; Moon Stone Umbreon, Leaf Stone Leafeon, Ice Stone Glaceon; Thunder Stone: Electabuzz Electivire, Magneton Magnezone, Porygon2 Porygon-Z; Fire Stone Magmar Magmortar.
- [x] The stone checks no longer copy evolution data into WRAM (Eevee's list did not fit); they use `CheckEvolveWithStone` in the evolution bank.

## Phase 5 — New moves (DONE, patch: phase5_moves.patch)
- 29 new moves (IDs up to 195, Struggle still last): Crunch, Night Slash, Dark Pulse, Iron Tail, Iron Head, Flash Cannon, Moonblast, Play Rough, Shadow Ball, Energy Ball, Earth Power, Focus Blast, Aura Sphere, Drain Punch, Dragon Claw, Dragon Pulse, Air Slash, Brave Bird, Roost, Poison Jab, Sludge Bomb, X-Scissor, Bug Buzz, Stone Edge, Power Gem, Giga Drain, Zen Headbutt, Hyper Voice, Aqua Tail.
- Reuse existing animations/sounds; Stone Edge and Night Slash are high-crit; categories set per move.
- Learnsets inserted by rule (type match, final stage, atk/spa); 71 species gain >=1 move.
- cries.asm -> "Cry Data", fishing.asm -> "Fishing Graphics" (bank $41) to free space.
- Known: Primeape's learnset order (46 THRASH before 45 SCREECH) is a vanilla quirk, left alone.
- Not done: TM/HM/tutor rebalance, move-effect edits (Roost etc. reuse closest existing effects).

## Phase 5b — Dazzle Gleam, Annihilape, TM overhaul (DONE, patch: phase5b_tms_annihilape.patch, apply after phase5_moves.patch)
- Move IDs were full (Struggle = $C3, items start at $C4), so 11 unused moves were retired in place (IDs unchanged): Comet Punch, Peck, Kinesis, Barrage, Lovely Kiss, Psywave, Egg Bomb, Conversion, Sharpen, Mimic, Dizzy Punch. Magikarp keeps Splash.
- New moves: Dazzle Gleam (name shortened to fit 12 chars), Rage Fist, Shadow Claw, Close Combat, Knock Off, Thunder/Fire/Ice Fang, Leaf Blade, Flare Blitz, Wild Charge. Scripted trainer moves that used retired moves were remapped (to be redone in Phase 8).
- Annihilape: dex 183, index $A2, Fighting/Ghost; Primeape learns Rage Fist at 35 and evolves into it on level-up while knowing it. Sprites are a Primeape placeholder in new bank "Pics 9" (second spare TM/HM bit selects it).
- TMs: 54 TMs (24 obsolete ones replaced, TM51-54 new = Crunch, Play Rough, Hyper Voice, Power Gem; item IDs $C9-$FE). TM/HM flags widened to 8 bytes (59 used, 2 spare bits are sprite-bank flags). Every species' TM list was rebuilt: surviving TMs keep their old compatibility, new TMs by type/stat rules + curated lists. NPC TM texts updated.
- Next: Phase 5c = learnset rewrite (modern level-up sets + egg/Stadium/XD-style moves).

## Phase 6: New species
For each of the ~28 species: base stats file, evolutions and learnset entry, name, Pokédex entry (`data/pokemon/dex_entries.asm`), front and back sprites, cry (`data/pokemon/cries.asm`), mini sprite, palette (`data/pokemon/palettes.asm`).
List: Pichu, Cleffa, Igglybuff, Happiny, Munchlax, Mime Jr., Tyrogue, Espeon, Umbreon, Leafeon, Glaceon, Sylveon, Crobat, Steelix, Scizor, Kingdra, Slowking, Politoed, Bellossom, Blissey, Porygon2, Porygon-Z, Magnezone, Electivire, Magmortar, Rhyperior, Tangrowth, Lickilicky, Hitmontop.
- [ ] Batch the art; decide up front whether to reuse Gen 2-style art or draw it.

## Phase 7: Availability of all species
- [ ] Audit wild encounter data, gifts, in-game trades and evolution lines to confirm every species is obtainable.
- [ ] Fix gaps with new encounters or gift Pokémon. Remove or rework in-game trades now that trade evolutions are gone.

## Phase 8: Trainer AI
- [ ] `engine/battle/trainer_ai.asm` (751 lines), `data/trainers/ai_pointers.asm` and `data/trainers/move_choices.asm`. **[verified]** AI is per-class routines; extend with flags by class, location and story progress (gym leaders switch and use items intelligently, early routes stay simple).
- [ ] Update trainer parties (`data/trainers/parties.asm`) for the new species, types and moves.

## Phase 9: Android (long term)
- [ ] Simplest path: build the ROM and wrap it in an emulator core (libretro, SameBoy or Gambatte). A native port is a much larger project; decide later.

## Phase 7b: Post-game (DONE, patch: phase7b_postgame.patch, apply after phase8b4_route_trainers.patch)
- **Gym rematches.** After MEWTWO is caught, defeated or fled from (`EVENT_BEAT_MEWTWO`), talk to any beaten gym leader in their gym to be offered a rematch (full 6-mon team, levels 65-75, boss AI). Each first win gives a themed item (the money is the normal class payout): Brock PP Up, Misty Water Stone, Surge Thunder Stone, Erika Leaf Stone, Koga PP Up, Sabrina Moon Stone, Blaine Fire Stone, Giovanni 5 Rare Candy. A full bag withholds the reward and the rematch stays open.
- **Giovanni** is the 8th rematch (party #4 of his class): he reappears in Viridian Gym after the other seven are done.
- **Mew** appears in Cerulean Cave B1F (where Mewtwo was, level 70, one-time encounter) after all eight rematches. Fleeing or fainting it removes it for good (`EVENT_BEAT_MEW`).
- Implementation: `engine/events/gym_rematch.asm` (bank "Trainer Parties"); `GymRematchOffer` is called from each leader's after-beat text branch and `GymRematchPostBattle` from the top of each leader's post-battle script. Flags: `EVENT_REMATCH_*` (one byte, bit = leader index 0-7 Brock..Giovanni), `EVENT_REMATCH_ACTIVE`, `EVENT_REMATCH_WON`, `EVENT_BEAT_MEW`. New toggle `TOGGLE_CERULEAN_CAVE_B1F_MEW` (later toggle IDs shift by one; save compatibility is already broken).
- Parties live in `parties.asm` (Brock/Misty/Surge/Erika/Koga/Sabrina/Blaine #2, Giovanni #4) with movesets in `special_moves.asm`; generated by `gen_7b.py`.
- Tests: party/moveset check for all 8 teams, 80+ logic checks of the helper (gating, Giovanni lock, rewards, full bag, Mew/Giovanni unlock sequencing) and a live run in Pewter Gym (talk, accept, win, reward).

## Move effect cleanup (DONE, patch: phase7c_move_effects.patch, apply after phase7b_postgame.patch)
- New real effects (IDs $5B-$5E): `FIRE_FANG_EFFECT`, `ICE_FANG_EFFECT`, `THUNDER_FANG_EFFECT` roll an independent 10% status and 10% flinch; `FLARE_BLITZ_EFFECT` deals 1/3 recoil (new 1/3 branch in `RecoilEffect_`, Double-Edge/Wild Charge stay 1/4) plus a 10% burn on a target that is still standing. Hyper Fang keeps its plain 10% flinch.
- Implemented with `RunSideEffectAs` (runs an existing side-effect routine as if the move's effect were another one), so the vanilla burn/freeze/paralysis/flinch rules (type immunity, substitute, existing status) apply unchanged.
- Knock Off still has no item effect: the game has no held items, so there is nothing to knock off. It stays a plain 65-power Dark move.
- Test: `test_effects7.py` (both sides, low/high rolls, independence, Fire-type immunity, recoil maths, fainted target).

## Phase 8b pass 4: remaining trainers (DONE, patch: phase8b5_trainer_movesets.patch, apply after phase7c_move_effects.patch)
- Curated 4-move sets (via `gen_8b5.py`) for every trainer of these classes with a mon at level 30 or higher: Lass, Jr. Trainer F, Pokemaniac, Super Nerd, Biker, Burglar, Fisher, Swimmer, Cue Ball, Beauty, Psychic, Juggler, Tamer, Bird Keeper, Blackbelt, Scientist, Gentleman and the Channelers (79 trainers, 165 Pokemon). Species, levels and party sizes are untouched (parties.asm is not changed).
- Rival 1/2 are still untouched. Lower-level trainers keep their level-up moves.
- Test: `test_8b5.py` loads all 79 and compares party, levels and moves.

## Phase 6a: Gen 2 species art (DONE, patch: phase6a_gen2_sprites.patch, apply after phase8b5_trainer_movesets.patch)
- Real front and back sprites for the 16 species that exist in Crystal: Crobat, Steelix, Scizor, Kingdra, Slowking, Politoed, Bellossom, Blissey, Porygon2, Hitmontop, Espeon, Umbreon, Pichu, Cleffa, Igglybuff, Tyrogue. Source: the first frame of each `front.png` and the `back.png` in the pokecrystal fork, converted with `conv_sprites.py` (front: 4 grey levels at the original 40/48/56 px size; back: Crystal's 48x48 shrunk to Yellow's 32x32, sharpened, 4 levels).
- "Pics 8" ran out of room, so these 16 moved to "Pics 9" (`NEWPICBANK2` in their tmhm lists); `test_species2.py` updated to expect that.
- Palettes: unchanged, the existing `PAL_*` entries colour the new sprites.
- Still on placeholders: the Gen 3+ species (Elekid line, Magby, Leafeon, Glaceon, Sylveon, Electivire, Magmortar, Rhyperior, Tangrowth, Lickilicky, Porygon-Z, Magnezone, Happiny, Munchlax, Mime Jr., Blissey line done above).

## Phase 6b: Crystal art for the original 151 (DONE, patch: phase6b_crystal_sprites.patch, apply after phase6a_gen2_sprites.patch)
- Front and back sprites of all 151 original species plus Elekid, Magby and Smoochum replaced with the Crystal art (same conversion as 6a). Left alone: the two Yellow fossil pictures, the ghost and the species Crystal does not have (Annihilape, Leafeon, Glaceon, Sylveon, Electivire, Magmortar, Rhyperior, Tangrowth, Lickilicky, Porygon-Z, Magnezone, Happiny, Munchlax, Mime Jr.).
- The sprite banks shared a ROM bank with other code, so Crystal's larger art overflowed three of them. Gyarados, Nidoking, Rapidash, Seaking, Articuno and Beedrill moved to "Pics 8" via the spare `NEWPICBANK` TM bit. The old sprite-bank test now allows exactly those.
- Sprite sizes now follow the Crystal art (5x5, 6x6 or 7x7 tiles) instead of always 7x7.

## Phase 6c - Polished Crystal sprites (done)
All 184 species now use art from rangi42/polishedcrystal (grey-quantised to 4 shades, back sprites 48->32).
Forms keep front/back in different folders (arbok_kanto + arbok, gyarados_plain + gyarados).
Bank overflow: Moltres, Kadabra, Dragonite, Machoke, Machamp, Cloyster moved to Pics 9 (NEWPICBANK2); Alakazam to Pics 8 (NEWPICBANK).
