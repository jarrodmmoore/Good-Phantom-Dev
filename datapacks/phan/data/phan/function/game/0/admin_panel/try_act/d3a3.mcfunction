#not unlocked? can't play
execute if score #d3a3Unlocked value matches 0 run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8
execute if score #d3a3Unlocked value matches 0 run return 0

#play the level
scoreboard players set #freePlay value 1
scoreboard players set #freePlayAct value 3
scoreboard players set #chosenLevel value 3
scoreboard players set #dream3Discovered value 1
#boot game state 2 in case we need to choose teams
function phan:game/2/_2_init
scoreboard players set #showActNumber value 3
execute if score @s enderChestMenu matches 10 run function phan:game/2/start_mode_score_attack_solo
execute if score @s enderChestMenu matches 20 run function phan:game/2/start_mode_time_attack
execute if score @s enderChestMenu matches 30 run function phan:game/2/start_mode_versus