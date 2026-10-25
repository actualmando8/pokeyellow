; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
;    * db EVOLVE_MOVE, required move, species
;    * db EVOLVE_ATK_GT_DEF / EVOLVE_ATK_LT_DEF / EVOLVE_ATK_EQ_DEF, level, species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw CrobatEvosMoves
	dw PichuEvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw CleffaEvosMoves
	dw MagmarEvosMoves
	dw IgglybuffEvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw BellossomEvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw PolitoedEvosMoves
	dw EspeonEvosMoves
	dw UmbreonEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw SlowkingEvosMoves
	dw SteelixEvosMoves
	dw ScizorEvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw KingdraEvosMoves
	dw Porygon2EvosMoves
	dw TyrogueEvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw HitmontopEvosMoves
	dw ElekidEvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MagbyEvosMoves
	dw BlisseyEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw LeafeonEvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw GlaceonEvosMoves
	dw SylveonEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MagnezoneEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw ElectivireEvosMoves
	dw MagmortarEvosMoves
	dw MukEvosMoves
	dw RhyperiorEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw TangrowthEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw LickilickyEvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw PorygonZEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw HappinyEvosMoves
	dw MunchlaxEvosMoves
	dw MimeJrEvosMoves
	dw AnnihilapeEvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw SmoochumEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

INCLUDE "data/pokemon/evos_moves_new.asm"

RhydonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 50, RHYPERIOR
	db 0
; Learnset
	db 21, ROCK_THROW
	db 27, TAKE_DOWN
	db 33, IRON_TAIL
	db 39, HORN_DRILL
	db 44, EARTHQUAKE
	db 48, STONE_EDGE
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, TAIL_WHIP
	db 13, BITE
	db 19, DOUBLESLAP
	db 25, FOCUS_ENERGY
	db 31, MEGA_PUNCH
	db 37, CRUNCH
	db 43, DRAIN_PUNCH
	db 49, EARTHQUAKE
	db 55, DOUBLE_EDGE
	db 60, HYPER_BEAM
	db 65, CLOSE_COMBAT
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 5, SING
	db 8, DOUBLESLAP
	db 14, MINIMIZE
	db 18, DEFENSE_CURL
	db 22, CHARM
	db 26, METRONOME
	db 30, DAZZLING_GLEAM
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 9, LEER
	db 13, FURY_ATTACK
	db 17, QUICK_ATTACK
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 6, SONICBOOM
	db 11, THUNDERSHOCK
	db 17, LIGHT_SCREEN
	db 22, SWIFT
	db 26, THUNDER_WAVE
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DOUBLE_KICK
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 36, HORN_DRILL
	db 40, EARTH_POWER
	db 44, SLUDGE_BOMB
	db 52, CLOSE_COMBAT
	db 56, HYPER_BEAM
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, GROWL
	db 10, WATER_GUN
	db 24, ZEN_HEADBUTT
	db 28, AMNESIA
	db 33, PSYCHIC_M
	db 38, ICE_BEAM
	db 44, FLAMETHROWER
	db 48, AQUA_TAIL
	db 52, HYDRO_PUMP
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 28, TAKE_DOWN
	db 34, GROWTH
	db 38, GIGA_DRAIN
	db 42, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, STUN_SPORE
	db 21, POISONPOWDER
	db 25, SLEEP_POWDER
	db 31, ENERGY_BALL
	db 38, STOMP
	db 42, GIGA_DRAIN
	db 46, PSYCHIC_M
	db 50, SOLARBEAM
	db 54, SHADOW_BALL
	db 0

LickitungEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, LICKILICKY
	db 0
; Learnset
	db 7, STOMP
	db 13, DISABLE
	db 19, DEFENSE_CURL
	db 25, SLAM
	db 31, SCREECH
	db 35, HYPER_VOICE
	db 39, POWER_GEM
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, STUN_SPORE
	db 21, POISONPOWDER
	db 25, SLEEP_POWDER
	db 31, ENERGY_BALL
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 6, POISON_GAS
	db 11, MINIMIZE
	db 16, SLUDGE
	db 21, POISON_JAB
	db 26, HARDEN
	db 32, SCREECH
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, HYPNOSIS
	db 13, SMOG
	db 18, SHADOW_CLAW
	db 22, DREAM_EATER
	db 27, SHADOW_BALL
	db 31, SLUDGE_BOMB
	db 35, DARK_PULSE
	db 40, FOCUS_BLAST
	db 44, PSYCHIC_M
	db 48, EXPLOSION
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 30, BITE
	db 36, FURY_SWIPES
	db 40, EARTH_POWER
	db 44, SLUDGE_BOMB
	db 52, CLOSE_COMBAT
	db 56, HYPER_BEAM
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 6, TAIL_WHIP
	db 10, STOMP
	db 15, FURY_ATTACK
	db 21, ROCK_THROW
	db 27, TAKE_DOWN
	db 33, IRON_TAIL
	db 39, HORN_DRILL
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, SING
	db 10, MIST
	db 15, BODY_SLAM
	db 20, CONFUSE_RAY
	db 25, ICE_BEAM
	db 30, AQUA_TAIL
	db 35, DRAGON_PULSE
	db 40, HYDRO_PUMP
	db 45, PSYCHIC_M
	db 50, BLIZZARD
	db 55, HYPER_BEAM
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, FIRE_FANG
	db 22, AGILITY
	db 27, FLAMETHROWER
	db 33, CRUNCH
	db 40, THUNDER_FANG
	db 46, FIRE_BLAST
	db 52, FLARE_BLITZ
	db 58, HYPER_BEAM
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, MOONBLAST
	db 55, FOCUS_BLAST
	db 60, ENERGY_BALL
	db 65, SHADOW_BALL
	db 70, FLAMETHROWER
	db 75, ICE_BEAM
	db 80, THUNDERBOLT
	db 85, SWORDS_DANCE
	db 90, DRAGON_PULSE
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, BITE
	db 28, DRAGON_RAGE
	db 32, LEER
	db 36, WATERFALL
	db 40, CRUNCH
	db 44, HYDRO_PUMP
	db 48, DRAGON_CLAW
	db 52, AQUA_TAIL
	db 56, HYPER_BEAM
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 8, SUPERSONIC
	db 13, CLAMP
	db 18, AURORA_BEAM
	db 24, BUBBLEBEAM
	db 30, ICE_BEAM
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 6, SUPERSONIC
	db 10, WRAP
	db 15, POISON_STING
	db 19, WATER_GUN
	db 24, CONSTRICT
	db 28, BUBBLEBEAM
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 8, HYPNOSIS
	db 13, SMOG
	db 18, SHADOW_CLAW
	db 22, DREAM_EATER
	db 0

ScytherEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, SCIZOR
	db 0
; Learnset
	db 6, LEER
	db 11, FOCUS_ENERGY
	db 16, DOUBLE_TEAM
	db 21, WING_ATTACK
	db 26, SLASH
	db 31, SWORDS_DANCE
	db 36, AGILITY
	db 38, X_SCISSOR
	db 41, AIR_SLASH
	db 46, ROOST
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 5, WATER_GUN
	db 9, HARDEN
	db 13, RECOVER
	db 17, SWIFT
	db 21, BUBBLEBEAM
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, WITHDRAW
	db 20, BITE
	db 26, SKULL_BASH
	db 30, BUBBLEBEAM
	db 38, FLASH_CANNON
	db 42, AQUA_TAIL
	db 48, HYDRO_PUMP
	db 54, ICE_BEAM
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, FOCUS_ENERGY
	db 11, BIND
	db 17, SEISMIC_TOSS
	db 23, HARDEN
	db 29, X_SCISSOR
	db 34, GUILLOTINE
	db 40, SWORDS_DANCE
	db 46, SLASH
	db 52, CLOSE_COMBAT
	db 0

TangelaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, TANGROWTH
	db 0
; Learnset
	db 5, BIND
	db 10, ABSORB
	db 15, VINE_WHIP
	db 20, POISONPOWDER
	db 25, STUN_SPORE
	db 30, SLEEP_POWDER
	db 35, GIGA_DRAIN
	db 0

MissingNo1FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo20EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 6, EMBER
	db 10, LEER
	db 14, FIRE_FANG
	db 18, TAKE_DOWN
	db 22, AGILITY
	db 27, FLAMETHROWER
	db 33, CRUNCH
	db 0

OnixEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, STEELIX
	db 0
; Learnset
	db 6, BIND
	db 10, ROCK_THROW
	db 15, RAGE
	db 19, HARDEN
	db 25, SLAM
	db 31, ROCK_SLIDE
	db 36, IRON_TAIL
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, FURY_ATTACK
	db 17, QUICK_ATTACK
	db 25, WING_ATTACK
	db 29, DRILL_PECK
	db 33, AGILITY
	db 37, ROOST
	db 43, BRAVE_BIRD
	db 49, HYPER_BEAM
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, QUICK_ATTACK
	db 13, WHIRLWIND
	db 19, WING_ATTACK
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, SUN_STONE, 1, SLOWKING
	db 0
; Learnset
	db 6, GROWL
	db 10, WATER_GUN
	db 14, DISABLE
	db 19, HEADBUTT
	db 24, ZEN_HEADBUTT
	db 28, AMNESIA
	db 33, PSYCHIC_M
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, ALAKAZAM
	db 0
; Learnset
	db 5, DISABLE
	db 18, PSYBEAM
	db 22, RECOVER
	db 26, REFLECT
	db 30, PSYCHIC_M
	db 34, SHADOW_BALL
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, GOLEM
	db 0
; Learnset
	db 11, ROCK_THROW
	db 16, HARDEN
	db 21, SELFDESTRUCT
	db 28, ROCK_SLIDE
	db 32, EARTHQUAKE
	db 37, IRON_HEAD
	db 0

ChanseyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, BLISSEY
	db 0
; Learnset
	db 5, SING
	db 9, MINIMIZE
	db 13, DEFENSE_CURL
	db 22, DOUBLESLAP
	db 26, SOFTBOILED
	db 30, LIGHT_SCREEN
	db 34, DOUBLE_TEAM
	db 38, ICE_BEAM
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0
; Learnset
	db 19, FOCUS_ENERGY
	db 25, SEISMIC_TOSS
	db 32, DRAIN_PUNCH
	db 36, SUBMISSION
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LIGHT_SCREEN
	db 13, DOUBLESLAP
	db 17, MEDITATE
	db 21, PSYBEAM
	db 25, REFLECT
	db 29, SUBSTITUTE
	db 33, SHADOW_BALL
	db 37, DAZZLING_GLEAM
	db 42, PSYCHIC_M
	db 46, FOCUS_BLAST
	db 50, MOONBLAST
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LOW_KICK
	db 10, FOCUS_ENERGY
	db 15, ROLLING_KICK
	db 24, JUMP_KICK
	db 30, MEGA_KICK
	db 36, HI_JUMP_KICK
	db 42, CLOSE_COMBAT
	db 48, STONE_EDGE
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LOW_KICK
	db 10, FOCUS_ENERGY
	db 15, ROLLING_KICK
	db 24, FIRE_PUNCH
	db 28, ICE_PUNCH
	db 32, THUNDERPUNCH
	db 36, MEGA_PUNCH
	db 42, DRAIN_PUNCH
	db 48, CLOSE_COMBAT
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, BITE
	db 17, GLARE
	db 27, SCREECH
	db 31, ACID
	db 35, POISON_JAB
	db 40, CRUNCH
	db 45, SLUDGE_BOMB
	db 50, EARTH_POWER
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, SPORE
	db 21, SLASH
	db 28, GROWTH
	db 32, GIGA_DRAIN
	db 36, X_SCISSOR
	db 41, SWORDS_DANCE
	db 46, SOLARBEAM
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 4, TAIL_WHIP
	db 8, DISABLE
	db 12, CONFUSION
	db 16, WATER_GUN
	db 22, FURY_SWIPES
	db 27, BUBBLEBEAM
	db 30, PSYBEAM
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 5, DISABLE
	db 10, CONFUSION
	db 15, HEADBUTT
	db 19, POISON_GAS
	db 24, ZEN_HEADBUTT
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, ROCK_THROW
	db 16, HARDEN
	db 21, SELFDESTRUCT
	db 28, ROCK_SLIDE
	db 32, EARTHQUAKE
	db 37, IRON_HEAD
	db 44, STONE_EDGE
	db 48, EARTH_POWER
	db 52, DOUBLE_EDGE
	db 56, EXPLOSION
	db 0

MissingNo32EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagmarEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, MAGMORTAR
	db 0
; Learnset
	db 9, SMOG
	db 13, LEER
	db 17, SMOKESCREEN
	db 22, FIRE_PUNCH
	db 27, CONFUSION
	db 34, FLAMETHROWER
	db 40, FOCUS_BLAST
	db 46, FIRE_BLAST
	db 50, THUNDERPUNCH
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, ELECTIVIRE
	db 0
; Learnset
	db 9, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 19, SWIFT
	db 24, SCREECH
	db 29, THUNDERPUNCH
	db 34, LIGHT_SCREEN
	db 38, THUNDERBOLT
	db 42, FOCUS_BLAST
	db 46, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, MAGNEZONE
	db 0
; Learnset
	db 9, SUPERSONIC
	db 21, THUNDER_WAVE
	db 26, SWIFT
	db 34, THUNDERBOLT
	db 38, SCREECH
	db 41, FLASH_CANNON
	db 46, LIGHT_SCREEN
	db 50, THUNDER
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 9, SMOKESCREEN
	db 14, SLUDGE
	db 19, SELFDESTRUCT
	db 25, HAZE
	db 31, SLUDGE_BOMB
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 9, LOW_KICK
	db 13, KARATE_CHOP
	db 17, FURY_SWIPES
	db 21, FOCUS_ENERGY
	db 25, SEISMIC_TOSS
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 5, GROWL
	db 9, AURORA_BEAM
	db 15, REST
	db 21, TAKE_DOWN
	db 27, ICE_BEAM
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, GROWL
	db 15, DIG
	db 21, SLASH
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 9, HORN_ATTACK
	db 13, RAGE
	db 21, STOMP
	db 25, ZEN_HEADBUTT
	db 31, TAKE_DOWN
	db 37, IRON_HEAD
	db 43, THRASH
	db 49, DOUBLE_EDGE
	db 55, EARTHQUAKE
	db 61, HYPER_BEAM
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEER
	db 13, FURY_ATTACK
	db 19, SWORDS_DANCE
	db 25, AGILITY
	db 31, SLASH
	db 37, AIR_SLASH
	db 43, NIGHT_SLASH
	db 49, BRAVE_BIRD
	db 55, LEAF_BLADE
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 9, SUPERSONIC
	db 13, CONFUSION
	db 17, POISONPOWDER
	db 21, LEECH_LIFE
	db 25, STUN_SPORE
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, SLAM
	db 26, DRAGON_RAGE
	db 35, DRAGON_PULSE
	db 40, AQUA_TAIL
	db 45, DRAGON_CLAW
	db 50, HYPER_BEAM
	db 58, ROOST
	db 60, FLAMETHROWER
	db 62, BRAVE_BIRD
	db 64, EARTHQUAKE
	db 66, THUNDERBOLT
	db 68, ICE_BEAM
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 9, GROWL
	db 13, FURY_ATTACK
	db 19, RAGE
	db 24, DRILL_PECK
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 7, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 20, BUBBLEBEAM
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LICK
	db 13, DOUBLESLAP
	db 18, ICE_PUNCH
	db 23, CONFUSION
	db 28, PSYBEAM
	db 33, BODY_SLAM
	db 38, ICE_BEAM
	db 43, PSYCHIC_M
	db 48, DAZZLING_GLEAM
	db 53, FOCUS_BLAST
	db 58, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SMOKESCREEN
	db 22, AGILITY
	db 29, ROOST
	db 36, AIR_SLASH
	db 43, FLAMETHROWER
	db 50, FIRE_BLAST
	db 57, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, MIST
	db 22, AURORA_BEAM
	db 29, ROOST
	db 36, AIR_SLASH
	db 43, REFLECT
	db 50, BLIZZARD
	db 57, HYPER_BEAM
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, THUNDER_WAVE
	db 22, AGILITY
	db 29, ROOST
	db 36, AIR_SLASH
	db 43, LIGHT_SCREEN
	db 50, THUNDER
	db 57, HYPER_BEAM
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 8, BITE
	db 12, PAY_DAY
	db 17, SCREECH
	db 22, FURY_SWIPES
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 6, VICEGRIP
	db 11, HARDEN
	db 16, STOMP
	db 22, BUBBLEBEAM
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 9, QUICK_ATTACK
	db 15, CONFUSE_RAY
	db 21, FIRE_SPIN
	db 28, ROAR
	db 33, FLAMETHROWER
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, CONFUSE_RAY
	db 21, FIRE_SPIN
	db 33, FLAMETHROWER
	db 36, SHADOW_BALL
	db 40, ZEN_HEADBUTT
	db 46, FIRE_BLAST
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLESLAP
	db 20, SWIFT
	db 26, THUNDERBOLT
	db 32, PLAY_ROUGH
	db 34, AGILITY
	db 38, WILD_CHARGE
	db 42, DAZZLING_GLEAM
	db 48, THUNDER
	db 54, LIGHT_SCREEN
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, TAIL_WHIP
	db 11, QUICK_ATTACK
	db 15, DOUBLESLAP
	db 20, SWIFT
	db 26, THUNDERBOLT
	db 32, PLAY_ROUGH
	db 34, AGILITY
	db 38, WILD_CHARGE
	db 42, DAZZLING_GLEAM
	db 48, THUNDER
	db 54, LIGHT_SCREEN
	db 56, IRON_TAIL
	db 60, HYPER_VOICE
	db 0

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 8, THUNDER_WAVE
	db 14, SLAM
	db 20, AGILITY
	db 26, DRAGON_RAGE
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 14, SLAM
	db 20, AGILITY
	db 26, DRAGON_RAGE
	db 35, DRAGON_PULSE
	db 40, AQUA_TAIL
	db 45, DRAGON_CLAW
	db 50, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 7, ABSORB
	db 13, SLASH
	db 19, LEER
	db 25, MEGA_DRAIN
	db 31, ROCK_SLIDE
	db 36, SWORDS_DANCE
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, SLASH
	db 19, LEER
	db 25, MEGA_DRAIN
	db 31, ROCK_SLIDE
	db 36, SWORDS_DANCE
	db 42, X_SCISSOR
	db 46, AQUA_TAIL
	db 50, STONE_EDGE
	db 54, NIGHT_SLASH
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 8, SMOKESCREEN
	db 13, LEER
	db 19, WATER_GUN
	db 25, BUBBLEBEAM
	db 0

SeadraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, KINGDRA
	db 0
; Learnset
	db 13, LEER
	db 19, WATER_GUN
	db 25, BUBBLEBEAM
	db 34, AGILITY
	db 38, DRAGON_PULSE
	db 42, HYDRO_PUMP
	db 0

MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 10, SAND_ATTACK
	db 14, DEFENSE_CURL
	db 17, SLASH
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, DEFENSE_CURL
	db 17, SLASH
	db 25, FURY_SWIPES
	db 30, SWIFT
	db 36, EARTHQUAKE
	db 42, IRON_HEAD
	db 48, X_SCISSOR
	db 54, SWORDS_DANCE
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 7, HORN_ATTACK
	db 13, LEER
	db 19, BUBBLEBEAM
	db 25, ROCK_THROW
	db 31, SPIKE_CANNON
	db 37, ROCK_SLIDE
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, LEER
	db 19, BUBBLEBEAM
	db 25, ROCK_THROW
	db 31, SPIKE_CANNON
	db 37, ROCK_SLIDE
	db 42, POWER_GEM
	db 46, ICE_BEAM
	db 50, HYDRO_PUMP
	db 54, EARTH_POWER
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 4, DEFENSE_CURL
	db 8, POUND
	db 11, DOUBLESLAP
	db 14, DISABLE
	db 19, REST
	db 24, BODY_SLAM
	db 29, HYPER_VOICE
	db 34, DOUBLE_EDGE
	db 40, PLAY_ROUGH
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, POUND
	db 19, REST
	db 24, BODY_SLAM
	db 29, HYPER_VOICE
	db 34, DOUBLE_EDGE
	db 40, PLAY_ROUGH
	db 44, MOONBLAST
	db 50, DAZZLING_GLEAM
	db 56, HYPER_BEAM
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db EVOLVE_ITEM, SUN_STONE, 1, ESPEON
	db EVOLVE_ITEM, MOON_STONE, 1, UMBREON
	db EVOLVE_ITEM, LEAF_STONE, 1, LEAFEON
	db EVOLVE_ITEM, ICE_STONE, 1, GLACEON
	db EVOLVE_MOVE, CHARM, SYLVEON
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 26, CHARM
	db 30, BITE
	db 36, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, GROWL
	db 26, CHARM
	db 30, BITE
	db 36, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 44, SMOG
	db 46, FIRE_FANG
	db 48, FIRE_SPIN
	db 50, FLAMETHROWER
	db 52, FLARE_BLITZ
	db 54, FIRE_BLAST
	db 56, SMOKESCREEN
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, GROWL
	db 26, CHARM
	db 30, BITE
	db 36, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 44, THUNDER_WAVE
	db 46, DOUBLE_KICK
	db 48, PIN_MISSILE
	db 50, THUNDERBOLT
	db 52, SHADOW_BALL
	db 54, THUNDER
	db 56, FOCUS_BLAST
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, GROWL
	db 26, CHARM
	db 30, BITE
	db 36, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 44, BUBBLEBEAM
	db 46, AURORA_BEAM
	db 48, AQUA_TAIL
	db 50, HAZE
	db 52, ACID_ARMOR
	db 54, HYDRO_PUMP
	db 56, ICE_BEAM
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 7, LOW_KICK
	db 13, LEER
	db 19, FOCUS_ENERGY
	db 25, SEISMIC_TOSS
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 10, SUPERSONIC
	db 13, BITE
	db 17, CONFUSE_RAY
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 10, POISON_STING
	db 13, BITE
	db 17, GLARE
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 6, STUN_SPORE
	db 11, LEECH_LIFE
	db 17, SPORE
	db 21, SLASH
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db EVOLVE_ITEM, SUN_STONE, 1, POLITOED
	db 0
; Learnset
	db 15, DOUBLESLAP
	db 20, BUBBLEBEAM
	db 28, BODY_SLAM
	db 32, AMNESIA
	db 36, WATERFALL
	db 40, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BUBBLEBEAM
	db 32, AMNESIA
	db 36, WATERFALL
	db 40, HYDRO_PUMP
	db 44, DRAIN_PUNCH
	db 48, CLOSE_COMBAT
	db 52, SUBMISSION
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, FOCUS_ENERGY
	db 20, TWINEEDLE
	db 24, RAGE
	db 28, PIN_MISSILE
	db 32, X_SCISSOR
	db 36, POISON_JAB
	db 40, AGILITY
	db 44, SLUDGE_BOMB
	db 48, SWORDS_DANCE
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, RAGE
	db 24, DRILL_PECK
	db 34, TRI_ATTACK
	db 38, AGILITY
	db 42, BRAVE_BIRD
	db 46, CRUNCH
	db 50, SWORDS_DANCE
	db 0

PrimeapeEvosMoves:
; Evolutions
	db EVOLVE_MOVE, RAGE_FIST, ANNIHILAPE
	db 0
; Learnset
	db 17, FURY_SWIPES
	db 21, FOCUS_ENERGY
	db 25, SEISMIC_TOSS
	db 32, CRUNCH
	db 35, RAGE_FIST
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 21, SLASH
	db 30, EARTH_POWER
	db 35, TRI_ATTACK
	db 40, EARTHQUAKE
	db 46, IRON_HEAD
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, POISONPOWDER
	db 21, LEECH_LIFE
	db 25, STUN_SPORE
	db 33, PSYBEAM
	db 37, SLEEP_POWDER
	db 41, BUG_BUZZ
	db 45, SLUDGE_BOMB
	db 49, PSYCHIC_M
	db 53, AIR_SLASH
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, REST
	db 21, TAKE_DOWN
	db 27, ICE_BEAM
	db 38, AQUA_TAIL
	db 42, BLIZZARD
	db 48, HYPER_BEAM
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 22, SUPERSONIC
	db 26, GUST
	db 30, PSYBEAM
	db 34, AIR_SLASH
	db 38, BUG_BUZZ
	db 44, DAZZLING_GLEAM
	db 50, ROOST
	db 56, PSYCHIC_M
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, FOCUS_ENERGY
	db 25, SEISMIC_TOSS
	db 32, DRAIN_PUNCH
	db 36, SUBMISSION
	db 44, CLOSE_COMBAT
	db 48, STONE_EDGE
	db 52, EARTHQUAKE
	db 56, FOCUS_BLAST
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, CONFUSION
	db 16, WATER_GUN
	db 22, FURY_SWIPES
	db 27, BUBBLEBEAM
	db 30, PSYBEAM
	db 36, ZEN_HEADBUTT
	db 40, AQUA_TAIL
	db 48, HYDRO_PUMP
	db 52, PSYCHIC_M
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, HEADBUTT
	db 19, POISON_GAS
	db 24, ZEN_HEADBUTT
	db 31, PSYCHIC_M
	db 35, MEDITATE
	db 39, SHADOW_BALL
	db 43, FOCUS_BLAST
	db 47, DREAM_EATER
	db 0

GolbatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, CROBAT
	db 0
; Learnset
	db 10, SUPERSONIC
	db 17, CONFUSE_RAY
	db 25, WING_ATTACK
	db 29, AIR_SLASH
	db 34, HAZE
	db 37, CRUNCH
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 55, SHADOW_BALL
	db 58, AURA_SPHERE
	db 61, RECOVER
	db 64, FOCUS_BLAST
	db 67, BARRIER
	db 70, AMNESIA
	db 73, FIRE_BLAST
	db 76, ICE_BEAM
	db 79, THUNDERBOLT
	db 82, DARK_PULSE
	db 85, HYPER_BEAM
	db 88, MIST
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, BITE
	db 11, DEFENSE_CURL
	db 17, BODY_SLAM
	db 23, ZEN_HEADBUTT
	db 29, SCREECH
	db 33, CRUNCH
	db 38, DOUBLE_EDGE
	db 43, EARTHQUAKE
	db 48, FLAMETHROWER
	db 54, HYPER_BEAM
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 15, TACKLE
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, MINIMIZE
	db 16, SLUDGE
	db 21, POISON_JAB
	db 26, HARDEN
	db 32, SCREECH
	db 40, SLUDGE_BOMB
	db 44, ACID_ARMOR
	db 50, HYPER_BEAM
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, HARDEN
	db 16, STOMP
	db 22, BUBBLEBEAM
	db 32, GUILLOTINE
	db 36, CRABHAMMER
	db 40, X_SCISSOR
	db 44, AQUA_TAIL
	db 48, SWORDS_DANCE
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, BUBBLEBEAM
	db 30, ICE_BEAM
	db 36, SPIKE_CANNON
	db 40, AQUA_TAIL
	db 44, POWER_GEM
	db 48, HYDRO_PUMP
	db 52, BLIZZARD
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, THUNDERSHOCK
	db 17, LIGHT_SCREEN
	db 22, SWIFT
	db 26, THUNDER_WAVE
	db 34, THUNDERBOLT
	db 38, FLASH_CANNON
	db 42, EXPLOSION
	db 46, THUNDER
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, DEFENSE_CURL
	db 22, CHARM
	db 30, DAZZLING_GLEAM
	db 34, MOONBLAST
	db 38, PLAY_ROUGH
	db 42, LIGHT_SCREEN
	db 46, HYPER_VOICE
	db 50, FOCUS_BLAST
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, SMOKESCREEN
	db 19, SELFDESTRUCT
	db 25, HAZE
	db 31, SLUDGE_BOMB
	db 38, FIRE_BLAST
	db 42, EXPLOSION
	db 46, SHADOW_BALL
	db 50, HYPER_BEAM
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, PAY_DAY
	db 22, FURY_SWIPES
	db 32, SLASH
	db 36, CRUNCH
	db 40, KNOCK_OFF
	db 44, HYPER_VOICE
	db 48, PLAY_ROUGH
	db 52, DARK_PULSE
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, THRASH
	db 36, EARTHQUAKE
	db 40, STONE_EDGE
	db 44, FLARE_BLITZ
	db 50, DOUBLE_EDGE
	db 56, RAGE
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, GENGAR
	db 0
; Learnset
	db 8, HYPNOSIS
	db 13, SMOG
	db 18, SHADOW_CLAW
	db 22, DREAM_EATER
	db 27, SHADOW_BALL
	db 31, SLUDGE_BOMB
	db 35, DARK_PULSE
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 5, DISABLE
	db 10, CONFUSION
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, DISABLE
	db 18, PSYBEAM
	db 22, RECOVER
	db 26, REFLECT
	db 30, PSYCHIC_M
	db 34, SHADOW_BALL
	db 40, DAZZLING_GLEAM
	db 44, FOCUS_BLAST
	db 48, DARK_PULSE
	db 52, HYPER_BEAM
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 9, QUICK_ATTACK
	db 13, WHIRLWIND
	db 19, WING_ATTACK
	db 25, AGILITY
	db 30, ROOST
	db 34, AIR_SLASH
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, WHIRLWIND
	db 19, WING_ATTACK
	db 25, AGILITY
	db 30, ROOST
	db 34, AIR_SLASH
	db 40, BRAVE_BIRD
	db 45, MIRROR_MOVE
	db 50, HYPER_VOICE
	db 55, HYPER_BEAM
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, RECOVER
	db 17, SWIFT
	db 21, BUBBLEBEAM
	db 30, PSYCHIC_M
	db 34, ICE_BEAM
	db 38, POWER_GEM
	db 42, THUNDERBOLT
	db 46, HYDRO_PUMP
	db 50, DAZZLING_GLEAM
	db 54, SHADOW_BALL
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 28, TAKE_DOWN
	db 34, GROWTH
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 28, TAKE_DOWN
	db 34, GROWTH
	db 38, GIGA_DRAIN
	db 42, SOLARBEAM
	db 46, SLUDGE_BOMB
	db 50, ENERGY_BALL
	db 56, HYPER_BEAM
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, POISON_STING
	db 19, WATER_GUN
	db 24, CONSTRICT
	db 28, BUBBLEBEAM
	db 33, BARRIER
	db 37, SCREECH
	db 41, SLUDGE_BOMB
	db 45, HYDRO_PUMP
	db 50, BLIZZARD
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 5, SUPERSONIC
	db 10, HORN_ATTACK
	db 15, WATER_GUN
	db 20, FURY_ATTACK
	db 25, WATERFALL
	db 30, AGILITY
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, HORN_ATTACK
	db 15, WATER_GUN
	db 20, FURY_ATTACK
	db 25, WATERFALL
	db 30, AGILITY
	db 36, HORN_DRILL
	db 40, AQUA_TAIL
	db 44, ICE_BEAM
	db 50, HYDRO_PUMP
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 9, GROWL
	db 13, STOMP
	db 19, FIRE_SPIN
	db 25, TAKE_DOWN
	db 31, AGILITY
	db 36, FLAMETHROWER
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, FIRE_SPIN
	db 25, TAKE_DOWN
	db 31, AGILITY
	db 36, FLAMETHROWER
	db 44, FLARE_BLITZ
	db 48, FIRE_BLAST
	db 52, HYPER_BEAM
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 10, BITE
	db 14, HYPER_FANG
	db 17, FOCUS_ENERGY
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, BITE
	db 14, HYPER_FANG
	db 17, FOCUS_ENERGY
	db 24, CRUNCH
	db 30, SUPER_FANG
	db 36, DOUBLE_EDGE
	db 42, SWORDS_DANCE
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 36, HORN_DRILL
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 36, FURY_SWIPES
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, HARDEN
	db 21, SELFDESTRUCT
	db 0

PorygonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, PORYGON2
	db 0
; Learnset
	db 9, PSYBEAM
	db 14, RECOVER
	db 20, AGILITY
	db 25, SWIFT
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, SUPERSONIC
	db 17, BITE
	db 25, ROOST
	db 33, TAKE_DOWN
	db 41, ROCK_SLIDE
	db 45, CRUNCH
	db 49, STONE_EDGE
	db 53, BRAVE_BIRD
	db 57, DRAGON_CLAW
	db 61, HYPER_BEAM
	db 0

MissingNoACEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 5, THUNDERSHOCK
	db 9, SUPERSONIC
	db 15, SONICBOOM
	db 21, THUNDER_WAVE
	db 26, SWIFT
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 9, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SLASH
	db 31, FIRE_FANG
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 8, BUBBLE
	db 11, WITHDRAW
	db 15, WATER_GUN
	db 20, BITE
	db 26, SKULL_BASH
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SLASH
	db 31, FIRE_FANG
	db 33, FIRE_SPIN
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 11, WITHDRAW
	db 15, WATER_GUN
	db 20, BITE
	db 26, SKULL_BASH
	db 30, BUBBLEBEAM
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SLASH
	db 31, FIRE_FANG
	db 33, FIRE_SPIN
	db 38, ROOST
	db 42, FLAMETHROWER
	db 46, DRAGON_CLAW
	db 50, AIR_SLASH
	db 56, FIRE_BLAST
	db 62, FLARE_BLITZ
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 8, POISONPOWDER
	db 11, STUN_SPORE
	db 14, SLEEP_POWDER
	db 18, ACID
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, 1, BELLOSSOM
	db 0
; Learnset
	db 14, SLEEP_POWDER
	db 18, ACID
	db 26, GIGA_DRAIN
	db 32, PETAL_DANCE
	db 40, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, POISONPOWDER
	db 26, GIGA_DRAIN
	db 40, SOLARBEAM
	db 44, SLUDGE_BOMB
	db 48, ENERGY_BALL
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 6, WRAP
	db 10, POISONPOWDER
	db 13, SLEEP_POWDER
	db 17, ACID
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 10, POISONPOWDER
	db 13, SLEEP_POWDER
	db 17, ACID
	db 25, STUN_SPORE
	db 29, RAZOR_LEAF
	db 33, POISON_JAB
	db 38, SLAM
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, WRAP
	db 10, POISONPOWDER
	db 33, POISON_JAB
	db 38, SLAM
	db 42, GIGA_DRAIN
	db 46, SLUDGE_BOMB
	db 50, LEAF_BLADE
	db 54, ENERGY_BALL
	db 0
