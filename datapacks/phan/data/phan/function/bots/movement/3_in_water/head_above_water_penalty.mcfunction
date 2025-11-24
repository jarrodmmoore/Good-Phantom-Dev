#don't apply penalty if our feet are right above a solid surface
execute if score #botAtBottomOfWater value matches 1 run return run scoreboard players set #test5 value 1
#=====

#be fair to the player ;)
scoreboard players set #multiplier value 66

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_y2 value *= #multiplier value
scoreboard players operation #coord_y2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value

#got penalty!
scoreboard players set #test5 value 1