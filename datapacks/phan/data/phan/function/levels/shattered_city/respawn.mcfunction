#old, de-referenced
#act 1 repsawns
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches ..0 in minecraft:the_end run tp @s 1721 85 2227 180 0
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches 1 in minecraft:the_end run tp @s 1802 118 2126 290 0
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches 2 in minecraft:the_end run tp @s 1859 102 2261 35 0
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches 3 in minecraft:the_end run tp @s 1789 105 2294 90 0
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches 4 in minecraft:the_end run tp @s 1671 105 2263 70 0
#execute if score @s pCurrentArea matches ..1 if score @s currentLoad matches 5.. in minecraft:the_end run tp @s 1676 110 2169 260 0

#act 2 repsawns
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches ..0 in minecraft:the_end run tp @s 1880 93 2388 90 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 1 in minecraft:the_end run tp @s 1813 84 2394 80 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 2 in minecraft:the_end run tp @s 1703 96 2394 90 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 3 in minecraft:the_end run tp @s 1617 102 2394 90 0
#scoreboard players set #altRespawn value 0
#execute if entity @s[scores={location_x=..1452,location_y=121..}] run scoreboard players set #altRespawn value 1
#execute if entity @s[scores={location_x=..1385,location_y=133..}] run scoreboard players set #altRespawn value 2
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 0 in minecraft:the_end run tp @s 1507 120 2394 90 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 1 in minecraft:the_end run tp @s 1452 121 2394 90 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 4 if score #altRespawn value matches 2 in minecraft:the_end run tp @s 1385 133 2402 90 0
#scoreboard players set #altRespawn value 0
#execute if entity @s[scores={location_x=1388..}] run scoreboard players set #altRespawn value 1
#execute if entity @s[scores={location_x=1637..}] run scoreboard players set #altRespawn value 2
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 0 in minecraft:the_end run tp @s 1346 151 2404 180 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 1 in minecraft:the_end run tp @s 1384 151 2401 270 0
#execute if score @s pCurrentArea matches 2.. if score @s currentLoad matches 5 if score #altRespawn value matches 2 in minecraft:the_end run tp @s 1636 106 2394 270 0

#act 3 repsawns
#execute if score @s pCurrentArea matches 3.. if score @s currentLoad matches ..0 in minecraft:the_end run tp @s 1472 121 2264 135 -15
#execute if score @s pCurrentArea matches 3.. if score @s currentLoad matches 1.. in minecraft:the_end run tp @s 1430 121 2222 135 0