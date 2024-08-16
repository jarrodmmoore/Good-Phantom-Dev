#default: assume ice or packed ice
scoreboard players set #multiplier value 96

#set multiplier depending on the block we're standing on (or in)
execute if block ~ ~ ~ blue_ice run scoreboard players set #multiplier value 101
execute if block ~ ~ ~ soul_sand run scoreboard players set #multiplier value 58
execute if block ~ ~ ~ slime_block run scoreboard players set #multiplier value 26
execute if block ~ ~ ~ honey_block run scoreboard players set #multiplier value 58
execute if block ~ ~ ~ cobweb run scoreboard players set #multiplier value 46

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value