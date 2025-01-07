#give players an extra respawn after clearing the tower
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 2 run tp @s[tag=!climbMoonlitTower] 2119 52 -105 0 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 2 run tp @s[tag=climbMoonlitTower] 2096 78 -75 0 0