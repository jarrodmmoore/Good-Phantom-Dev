#executed by the entity we want to ender pearl to
#executed at the position of the thrower

#return out if a target was already found
execute if score #targetExists value matches 1.. run return 0

#try out a few different throw angles to see if anything hits
scoreboard players set #rot_pitch value -15
execute facing entity @s eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -25
execute facing entity @s eyes rotated ~ ~-25 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -35
execute facing entity @s eyes rotated ~ ~-35 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -45
execute facing entity @s eyes rotated ~ ~-45 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0
