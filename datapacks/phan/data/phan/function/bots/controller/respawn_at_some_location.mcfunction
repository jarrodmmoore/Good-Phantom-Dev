scoreboard players set #botSpawnSuccess value 0

#was this NOT a natural respawn? consider advancing the bot forward 1 checkpoint in race mode if it's been long enough
execute if entity @s[tag=!naturalBotRespawn] if score #vGameType value matches 1 run function phan:bots/controller/no_bot_found_consider_advancing_cp
tag @s[tag=naturalBotRespawn] remove naturalBotRespawn

#don't have a saved spawn point? respawn at a random versus start point
execute if entity @s[tag=!botHasSpawnpoint] run return run execute at @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data

#are our saved coordinates out of date? try to respawn directly at a checkpoint, then
execute if entity @s[tag=botNeedMarkerToRespawn] if score #vGameType value matches 1 run return run function phan:bots/spawn/respawn_entity_need_marker

#otherwise, respawn at our saved coordinates
execute store result storage phan:coords coord_x int 1 run scoreboard players get @s vsRespawnX
execute if score @s vsRespawnY matches ..-64 run scoreboard players set @s vsRespawnY -60
execute store result storage phan:coords coord_y int 1 run scoreboard players get @s vsRespawnY
execute store result storage phan:coords coord_z int 1 run scoreboard players get @s vsRespawnZ
execute store result storage phan:coords coord_yaw int 1 run scoreboard players get @s vsRespawnYaw
execute if score @s vsRespawnDimension matches 1 in overworld run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords
execute if score @s vsRespawnDimension matches 2 in the_nether run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords
execute if score @s vsRespawnDimension matches 3 in the_end run function phan:bots/controller/respawn_at_some_location_macro with storage phan:coords