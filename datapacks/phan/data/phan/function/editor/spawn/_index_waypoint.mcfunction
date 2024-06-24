#default to all 0s
scoreboard players set #waypointDir1 value 0
scoreboard players set #waypointDir2 value 0
scoreboard players set #waypointDir3 value 0
scoreboard players set #waypointDir4 value 0
scoreboard players set #waypointEvent value 0
scoreboard players set #waypointModifier value 0
scoreboard players set #waypointHook value 0

#get next waypoint id and get tags into storage
function phan:editor/ai_waypoint/get_next_id

#get values from player
execute as @a[limit=1,sort=nearest,tag=phan_edit] run function phan:editor/spawn/waypoint_get_values_from_player

#summon the node with proper tags
function phan:editor/spawn/waypoint_spawn_with_storage with storage phan:ai_waypoint
execute as @e[type=marker,tag=setMe] at @s run function phan:editor/spawn/waypoint_inherit_values

#now we perish
scoreboard players set @s lifespan 1
tag @s remove nodeSpawn