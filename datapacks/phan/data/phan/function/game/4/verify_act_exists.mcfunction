execute store result storage phan:level_index act int 1 run scoreboard players get #vAct value
scoreboard players set #success value 0
function phan:game/4/verify_act_exists_go with storage phan:level_index
execute if score #success value matches 0 run return 0
execute if score #success value matches 1 run return 1