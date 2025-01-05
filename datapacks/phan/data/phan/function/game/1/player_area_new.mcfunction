execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 1 run scoreboard players set #area1SpawnA value 0
execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 2 run scoreboard players set #area2SpawnA value 0
execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 3 run scoreboard players set #area3SpawnA value 0
execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 4 run scoreboard players set #area4SpawnA value 0
execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 5 run scoreboard players set #area5SpawnA value 0

execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 1 run scoreboard players set #area1SpawnB value 0
execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 2 run scoreboard players set #area2SpawnB value 0
execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 3 run scoreboard players set #area3SpawnB value 0
execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 4 run scoreboard players set #area4SpawnB value 0
execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 5 run scoreboard players set #area5SpawnB value 0

execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 1 run scoreboard players set #area1SpawnC value 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 2 run scoreboard players set #area2SpawnC value 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 3 run scoreboard players set #area3SpawnC value 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 4 run scoreboard players set #area4SpawnC value 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 5 run scoreboard players set #area5SpawnC value 0

#request a new spawnpoint, hope the mapper obliged with a score attack respawn point node
scoreboard players operation @s seekSpawnpoint = @s currentLoad

#keep track of how many laps we've run on Moonlit Act 3
execute if score #chosenLevel value matches 2 if entity @s[scores={currentLoad=1,previousLoad=3}] run scoreboard players add @s lap 1