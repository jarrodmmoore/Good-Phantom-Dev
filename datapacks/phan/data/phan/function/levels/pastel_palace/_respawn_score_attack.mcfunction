#special case in act 2: can spawn on either side of the castle depending on context
execute if score @s pCurrentArea matches 2 if score @s location_x matches ..1077 if score @s currentLoad matches 3 run tp @s 980 93 112 -90 0
execute if score @s pCurrentArea matches 2 if score @s location_x matches 1078.. if score @s currentLoad matches 3 run tp @s 1128 101 212 235 0