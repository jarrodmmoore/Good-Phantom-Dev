#be fair to the player ;)
scoreboard players set #multiplier value 66

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_y2 value *= #multiplier value
scoreboard players operation #coord_y2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value