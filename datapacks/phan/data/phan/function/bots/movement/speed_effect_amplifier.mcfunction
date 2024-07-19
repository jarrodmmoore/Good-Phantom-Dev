scoreboard players set #multiplier value 100

#set multiplier depending on the effect we have (strongest one takes priority)
execute if score @s botEffectSpeedPotion matches 1.. run scoreboard players set #multiplier value 158
#equivalent of speed 2
execute if score @s botEffectSpeedPad matches 1.. run scoreboard players set #multiplier value 158
#equivalent of speed 4
execute if score @s botEffectSpeedPad2 matches 1.. run scoreboard players set #multiplier value 199

#don't do math for no reason
execute if score #multiplier value matches 100 run return 0

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_y2 value *= #multiplier value
scoreboard players operation #coord_y2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value