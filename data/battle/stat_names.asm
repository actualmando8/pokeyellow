; Stats that vitamins can raise or lower

VitaminStats:
	list_start STAT_NAME_LENGTH - 1
	li "HEALTH"
	li "ATTACK"
	li "DEFENSE"
	li "SPEED"
	li "SPECIAL" ; Calcium raises the stat exp that Sp.Atk and Sp.Def share
	assert_list_length NUM_STAT_EXP
