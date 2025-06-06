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
scoreboard players set @s pShowHUD 1

#bots only? not anymore!
scoreboard players set #botsOnly value 0

#hi
tellraw @s ["",{translate:"gp.misc.playing",color:"aqua",italic:true}]
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.pling",targets:"@s",pitch:"2",volume:"1"}

#respawn at one of the spawnpoints, saved when we said GO!
scoreboard players operation @s vsRespawnX = #fallbackRespawnX value
scoreboard players operation @s vsRespawnY = #fallbackRespawnY value
scoreboard players operation @s vsRespawnZ = #fallbackRespawnZ value
scoreboard players operation @s vsRespawnYaw = #fallbackRespawnYaw value
scoreboard players operation @s vsRespawnPitch = #fallbackRespawnPitch value
scoreboard players operation @s vsRespawnDimension = #activeDimension value
scoreboard players set @s vsRespawnLaunch 0

#battle mode: use specialized respawn function
execute if score #vGameType value matches 2 run return run function phan:game/4/battle/respawn
#=====

#get to a player start node by whatever means needed
execute if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1},distance=..100] run function phan:game/4/race/join_trigger_found_start_node
execute if score #fallbackRespawnExists value matches 1 unless entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1},distance=..100] run function phan:game/4/race/respawn

#if fallback respawn doesn't exist, player will just... be wherever they are