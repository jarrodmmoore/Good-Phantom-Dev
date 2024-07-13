#haven't started the race yet? respawn at a random versus start point
execute if score @s lap matches ..0 at @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1},limit=1,sort=random] run return run function phan:bots/spawn/respawn_entity with storage phan:bot_data

#otherwise, respawn at our saved coordinates
execute store result storage phan:coords coord_x int 1 run scoreboard players get @s vsRespawnX
execute store result storage phan:coords coord_y int 1 run scoreboard players get @s vsRespawnY
execute store result storage phan:coords coord_z int 1 run scoreboard players get @s vsRespawnZ
execute store result storage phan:coords coord_yaw int 1 run scoreboard players get @s vsRespawnYaw
execute if score @s vsRespawnDimension matches 1 in overworld run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords
execute if score @s vsRespawnDimension matches 2 in the_nether run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords
execute if score @s vsRespawnDimension matches 3 in the_end run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords