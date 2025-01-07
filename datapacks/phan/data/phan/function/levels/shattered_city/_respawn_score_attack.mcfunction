#special case in the last 2 load areas of act 2
scoreboard players set #altRespawn value 0
execute if entity @s[scores={location_x=..1452,location_y=121..}] run scoreboard players set #altRespawn value 1
execute if entity @s[scores={location_x=..1385,location_y=133..}] run scoreboard players set #altRespawn value 2
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 0 in minecraft:the_end run tp @s 1507 120 2394 90 0
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 1 in minecraft:the_end run tp @s 1452 121 2394 90 0
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 2 in minecraft:the_end run tp @s 1385 133 2402 90 0
scoreboard players set #altRespawn value 0
execute if entity @s[scores={location_x=1388..}] run scoreboard players set #altRespawn value 1
execute if entity @s[scores={location_x=1637..}] run scoreboard players set #altRespawn value 2
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 0 in minecraft:the_end run tp @s 1346 151 2404 180 0
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 1 in minecraft:the_end run tp @s 1384 151 2401 270 0
execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 2 in minecraft:the_end run tp @s 1636 106 2394 270 0