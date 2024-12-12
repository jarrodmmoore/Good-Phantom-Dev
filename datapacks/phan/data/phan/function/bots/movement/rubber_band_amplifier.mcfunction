#change bot speed based on rubber band value
scoreboard players set #multiplier value 100
execute if score @s botRubberbanding matches -3 run scoreboard players set #multiplier value 77
execute if score @s botRubberbanding matches -2 run scoreboard players set #multiplier value 84
execute if score @s botRubberbanding matches -1 run scoreboard players set #multiplier value 92

execute if score @s botRubberbanding matches 1 run scoreboard players set #multiplier value 105
execute if score @s botRubberbanding matches 2 run scoreboard players set #multiplier value 110
execute if score @s botRubberbanding matches 3 run scoreboard players set #multiplier value 115

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_y2 value *= #multiplier value
scoreboard players operation #coord_y2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value