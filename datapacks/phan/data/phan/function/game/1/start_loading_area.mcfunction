#run by a player
#reset all object spawns
#make sure area0 and area1 are spawned
execute if score @s pCurrentArea matches 1 run function phan:game/1/spawning/reset_all_a
execute if score @s pCurrentArea matches 1 run scoreboard players set #area0SpawnA value 1
execute if score @s pCurrentArea matches 1 run scoreboard players set #area1SpawnA value 1

execute if score @s pCurrentArea matches 2 run function phan:game/1/spawning/reset_all_b
execute if score @s pCurrentArea matches 2 run scoreboard players set #area0SpawnB value 1
execute if score @s pCurrentArea matches 2 run scoreboard players set #area1SpawnB value 1

execute if score @s pCurrentArea matches 3 run function phan:game/1/spawning/reset_all_c
execute if score @s pCurrentArea matches 3 run scoreboard players set #area0SpawnC value 1
execute if score @s pCurrentArea matches 3 run scoreboard players set #area1SpawnC value 1