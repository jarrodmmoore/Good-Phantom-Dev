#there's only 1 type of slowness given anywhere in the code, so this will do fine
scoreboard players set #multiplier value 56

#apply multiplier
scoreboard players operation #coord_x2 value *= #multiplier value
scoreboard players operation #coord_x2 value /= #100 value
scoreboard players operation #coord_y2 value *= #multiplier value
scoreboard players operation #coord_y2 value /= #100 value
scoreboard players operation #coord_z2 value *= #multiplier value
scoreboard players operation #coord_z2 value /= #100 value

#don't be on fire due to lightning!
execute if score #5Hz value matches 2 run data merge entity @s {Fire:0}
execute if score #5Hz value matches 2 on vehicle run data merge entity @s {Fire:0}
execute if score #5Hz value matches 2 on vehicle if entity @s[tag=botElytraHeightFix] on vehicle run data merge entity @s {Fire:0}
#(this only seems to work *sometimes*. i do not know why)