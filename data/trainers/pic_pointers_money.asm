MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money YoungsterPic,    2300
	pic_money BugCatcherPic,   1500
	pic_money LassPic,         2300
	pic_money SailorPic,       4500
	pic_money JrTrainerMPic,   3000
	pic_money JrTrainerFPic,   3000
	pic_money PokemaniacPic,   7500
	pic_money SuperNerdPic,    3800
	pic_money HikerPic,        5300
	pic_money BikerPic,        3000
	pic_money BurglarPic,      13500
	pic_money EngineerPic,     7500
	pic_money JugglerPic,      5300
	pic_money FisherPic,       5300
	pic_money SwimmerPic,       800
	pic_money CueBallPic,      3800
	pic_money GamblerPic,      10500
	pic_money BeautyPic,       10500
	pic_money PsychicPic,      1500
	pic_money RockerPic,       3800
	pic_money JugglerPic,      5300
	pic_money TamerPic,        6000
	pic_money BirdKeeperPic,   3800
	pic_money BlackbeltPic,    3800
	pic_money Rival1Pic,       5300
	pic_money ProfOakPic,      14900
	pic_money ChiefPic,        4500
	pic_money ScientistPic,    7500
	pic_money GiovanniPic,     14900
	pic_money RocketPic,       4500
	pic_money CooltrainerMPic, 5300
	pic_money CooltrainerFPic, 5300
	pic_money BrunoPic,        14900
	pic_money BrockPic,        14900
	pic_money MistyPic,        14900
	pic_money LtSurgePic,      14900
	pic_money ErikaPic,        14900
	pic_money KogaPic,         14900
	pic_money BlainePic,       14900
	pic_money SabrinaPic,      14900
	pic_money GentlemanPic,    10500
	pic_money Rival2Pic,       9800
	pic_money Rival3Pic,       14900
	pic_money LoreleiPic,      14900
	pic_money ChannelerPic,    4500
	pic_money AgathaPic,       14900
	pic_money LancePic,        14900
	assert_table_length NUM_TRAINERS
