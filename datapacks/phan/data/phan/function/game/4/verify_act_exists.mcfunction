execute store result storage phan:level_index act int 1 run scoreboard players get #vAct value
scoreboard players set #success value 0
function phan:game/4/verify_act_exists_go with storage phan:level_index


#special cases for some of the stock dreams

#don't play Deep Dive Act 4 in sequence
execute if score #chosenLevel value matches 5 if score #vAct value matches 4 run scoreboard players set #success value 0
#don't play Phantom Forest Act 4 in sequence
execute if score #chosenLevel value matches 6 if score #vAct value matches 4 run scoreboard players set #success value 0

#best that we don't force battle mode onto players in a regular dream sequence.
#most people just want races and don't care for battle.
#but for those who DO like it, there's the Free Play menu and custom grand prix editor ;)


#return based on success value
execute if score #success value matches 0 run return 0
execute if score #success value matches 1 run return 1