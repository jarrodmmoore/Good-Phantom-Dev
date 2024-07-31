#try to use a pitch that will roughly get us to the portal
#(i.e. throw s*** at the wall and hope something sticks)

scoreboard players set #rot_pitch value -15
execute as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] facing entity @s eyes rotated ~ ~-15 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -20
execute as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] facing entity @s eyes rotated ~ ~-20 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -25
execute as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] facing entity @s eyes rotated ~ ~-25 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -30
execute as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] facing entity @s eyes rotated ~ ~-30 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct
execute if score #targetExists value matches 1.. run return 0

scoreboard players set #rot_pitch value -35
execute as @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..70] facing entity @s eyes rotated ~ ~-35 run function phan:bots/items/15_ender_pearl/pearl_check_los_start_direct