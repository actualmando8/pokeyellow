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
- [ ] **3c. Reclassify moves** to Gen 4+ categories by editing `categories.asm` (e.g. Fire Punch physical, Bite physical, Surf special). Also give moves their new types where wanted.
- [ ] **3d. Retype Pokémon** in `data/pokemon/base_stats/*.asm` (Magnemite/Magneton Steel, Clefairy/Clefable/Jigglypuff/Wigglytuff Fairy, Gengar etc. as you prefer).
- [ ] **3e. Decide on Gen 1 chart quirks.** Kept as-is for now: Ghost vs Psychic does no damage (a known bug), Bug and Poison are super effective on each other, Ice does not resist itself being hit by Fire. Fixes are in `docs/bugs_and_glitches.md`.
- [ ] **3f. Counter** should respond to the physical category, not Normal/Fighting type. Needs a look at the Counter effect code.
- [ ] **3g. AI** type matchup code (`AIGetTypeEffectiveness`) uses `TypeEffects` already, so new types work there; check move-choice routines in `trainer_ai.asm`.
- [ ] Optional: show the category on the move info screen (needs a small graphic and a tile).
- Space: the "Battle Core" bank has about 800 bytes free after 3b. Keep an eye on this.

## Phase 4: The one big struct overhaul (do together; breaks saves once)
- [ ] Split Special into SpAtk/SpDef. The base stat line is currently `hp atk def spd spc` (one Special). **[verified]** Touches: base stats files, party/box mon structs, stat calculation, stat experience, DVs, battle stat modifiers, the save layout.
- [ ] Expand species count past 151 (about +28 species); `NUM_POKEMON_INDEXES` is in `constants/pokemon_constants.asm`. **[verified]**
- [ ] Enlarge Pokédex seen/owned flag arrays to match **[check]**.
- [ ] Add any new move or type fields here too.
- [ ] After this commit, re-test the save, load and boot flows end to end.

## Phase 5: Moves
- [ ] Add later-gen moves; reuse existing battle animations where you can (new animations are the expensive part).
- [ ] Rebalance move list, TM/HM and move tutor sets.

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
