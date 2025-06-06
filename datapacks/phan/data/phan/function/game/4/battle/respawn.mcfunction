#fallback: remember where we first respawned when the game started
scoreboard players operation #vsRespawnX value = @s vsRespawnX
scoreboard players operation #vsRespawnY value = @s vsRespawnY
scoreboard players operation #vsRespawnZ value = @s vsRespawnZ
scoreboard players operation #vsRespawnYaw value = @s vsRespawnYaw
scoreboard players operation #vsRespawnPitch value = @s vsRespawnPitch

#pick a random node to respawn at (preferably one that hasn't been used recently)
scoreboard players set #test value 0
scoreboard players remove @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1,editArg3=1..}] editArg3 1
execute as @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1,editArg3=..0},limit=1,sort=random] run function phan:game/4/battle/respawn_pick_node
execute if score #test value matches 0 as @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1},limit=1,sort=random] run function phan:game/4/battle/respawn_pick_node

#play death sound?
execute if score #playerDied value matches 1 at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2

#do the teleport!
scoreboard players operation @s goto_x = #vsRespawnX value
scoreboard players operation @s goto_y = #vsRespawnY value
scoreboard players operation @s goto_z = #vsRespawnZ value
scoreboard players operation @s goto_yaw = #vsRespawnYaw value
scoreboard players operation @s goto_pitch = #vsRespawnPitch value
function phan:warp_to_saved_coords/_go

#sounds
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute unless score #playerDied value matches 1 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2
execute if score #playerDied value matches 1 run effect give @s blindness 1 1 true
execute if score #playerDied value matches 1 run title @s subtitle [""]
execute if score #playerDied value matches 1 run title @s title ["",{translate:"gp.versus.you_died",color:"red",bold:true}]
execute if score #playerDied value matches 1 at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.phantom.death",targets:"@s",pitch:"1",volume:"1"}

#count how many times we've died without getting a KO
execute if score #playerDied value matches 1 run scoreboard players add @s deathsSinceKO 1

#clear inventory and stuff
clear @s
scoreboard players set @s energy 6

#clear the list of rings we've hit
scoreboard players set @s hitRing1a -1
scoreboard players set @s hitRing2a -1
scoreboard players set @s hitRing3a -1
scoreboard players set @s hitRing4a -1
scoreboard players set @s hitRing5a -1
scoreboard players set @s hitRing6a -1
scoreboard players set @s hitRing7a -1
scoreboard players set @s hitRing8a -1
scoreboard players set @s hitRing9a -1
scoreboard players set @s hitRing10a -1
scoreboard players set @s hitRing1b -1
scoreboard players set @s hitRing2b -1
scoreboard players set @s hitRing3b -1
scoreboard players set @s hitRing4b -1
scoreboard players set @s hitRing5b -1
scoreboard players set @s hitRing6b -1
scoreboard players set @s hitRing7b -1
scoreboard players set @s hitRing8b -1
scoreboard players set @s hitRing9b -1
scoreboard players set @s hitRing10b -1

#cancel momentum
execute at @s run tp @s @s

#cooldown on respawn
scoreboard players set @s inputCooldownB 40
scoreboard players set @s inputCooldownC 7

#if we died 3x in a row without getting a KO, start with a shield item
execute if score #playerDied value matches 1 if score @s deathsSinceKO matches 3.. run function phan:game/4/battle/player_inventory
execute if score #playerDied value matches 1 if score @s deathsSinceKO matches 3.. run function phan:items/give/shield {count:1}

#respawn invulnerability time
scoreboard players set @s spawnInvulnerability 40

#reset parameter
scoreboard players set #playerDied value 0