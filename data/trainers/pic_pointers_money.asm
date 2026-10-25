MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	; (all bases are 1.5x the original Yellow values)
	pic_money YoungsterPic,    3400
	pic_money BugCatcherPic,   2200
	pic_money LassPic,         3400
	pic_money SailorPic,       6700
	pic_money JrTrainerMPic,   4500
	pic_money JrTrainerFPic,   4500
	pic_money PokemaniacPic,   11200
	pic_money SuperNerdPic,    5700
	pic_money HikerPic,        7900
	pic_money BikerPic,        4500
	pic_money BurglarPic,      20200
	pic_money EngineerPic,     11200
	pic_money JugglerPic,      7900
	pic_money FisherPic,       7900
	pic_money SwimmerPic,       1200
	pic_money CueBallPic,      5700
	pic_money GamblerPic,      15700
	pic_money BeautyPic,       15700
	pic_money PsychicPic,      2200
	pic_money RockerPic,       5700
	pic_money JugglerPic,      7900
	pic_money TamerPic,        9000
	pic_money BirdKeeperPic,   5700
	pic_money BlackbeltPic,    5700
	pic_money Rival1Pic,       7900
	pic_money ProfOakPic,      22300
	pic_money ChiefPic,        6700
	pic_money ScientistPic,    11200
	pic_money GiovanniPic,     22300
	pic_money RocketPic,       6700
	pic_money CooltrainerMPic, 7900
	pic_money CooltrainerFPic, 7900
	pic_money BrunoPic,        22300
	pic_money BrockPic,        22300
	pic_money MistyPic,        22300
	pic_money LtSurgePic,      22300
	pic_money ErikaPic,        22300
	pic_money KogaPic,         22300
	pic_money BlainePic,       22300
	pic_money SabrinaPic,      22300
	pic_money GentlemanPic,    15700
	pic_money Rival2Pic,       14700
	pic_money Rival3Pic,       22300
	pic_money LoreleiPic,      22300
	pic_money ChannelerPic,    6700
	pic_money AgathaPic,       22300
	pic_money LancePic,        22300
	assert_table_length NUM_TRAINERS
