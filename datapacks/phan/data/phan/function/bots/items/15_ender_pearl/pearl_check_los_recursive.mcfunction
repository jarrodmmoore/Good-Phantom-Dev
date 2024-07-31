scoreboard players remove #recursions value 1

#found us? ok
execute positioned ~-2 -64 ~-2 if entity @s[dx=4,dy=400,dz=4] run return run function phan:bots/items/15_ender_pearl/pearl_check_los_success

#keep looking?
execute if score #recursions value matches 1.. rotated ~ ~1 positioned ^ ^ ^1 if block ~ ~ ~ #phan:not_solid_not_water run function phan:bots/items/15_ender_pearl/pearl_check_los_recursive