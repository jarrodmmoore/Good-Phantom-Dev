scoreboard players reset @s joinGame

#join the game!
function phan:game/4/reset_player_scores
tag @s remove vsMidGameJoin
tag @s add playing
gamemode adventure
tag @s remove noInventory
scoreboard players set @s check 0
scoreboard players set @s checkFake 0
scoreboard players set @s lap 1
scoreboard players set @s rawTime 0

#hi
tellraw @s ["",{"translate":"gp.misc.playing","color":"aqua","italic":true}]
execute at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 2

#respawn at one of the spawnpoints, saved when we said GO!
scoreboard players operation @s vsRespawnX = #fallbackRespawnX value
scoreboard players operation @s vsRespawnY = #fallbackRespawnY value
scoreboard players operation @s vsRespawnZ = #fallbackRespawnZ value
scoreboard players operation @s vsRespawnYaw = #fallbackRespawnYaw value
scoreboard players operation @s vsRespawnPitch = #fallbackRespawnPitch value
scoreboard players set @s vsRespawnLaunch 0

#get to a player start node by whatever means needed
execute if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1}] run function phan:game/4/race/join_trigger_found_start_node
execute unless entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1}] run function phan:game/4/race/respawn