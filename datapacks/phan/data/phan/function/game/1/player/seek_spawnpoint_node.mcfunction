scoreboard players set #success value 0

#try to grab coordinates of relevant node
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=0}] as @e[type=marker,tag=saRespawnPoint,scores={area0SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=1}] as @e[type=marker,tag=saRespawnPoint,scores={area1SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=2}] as @e[type=marker,tag=saRespawnPoint,scores={area2SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=3}] as @e[type=marker,tag=saRespawnPoint,scores={area3SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=4}] as @e[type=marker,tag=saRespawnPoint,scores={area4SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=1,seekSpawnpoint=5}] as @e[type=marker,tag=saRespawnPoint,scores={area5SpawnA=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found

execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=0}] as @e[type=marker,tag=saRespawnPoint,scores={area0SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=1}] as @e[type=marker,tag=saRespawnPoint,scores={area1SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=2}] as @e[type=marker,tag=saRespawnPoint,scores={area2SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=3}] as @e[type=marker,tag=saRespawnPoint,scores={area3SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=4}] as @e[type=marker,tag=saRespawnPoint,scores={area4SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=2,seekSpawnpoint=5}] as @e[type=marker,tag=saRespawnPoint,scores={area5SpawnB=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found

execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=0}] as @e[type=marker,tag=saRespawnPoint,scores={area0SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=1}] as @e[type=marker,tag=saRespawnPoint,scores={area1SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=2}] as @e[type=marker,tag=saRespawnPoint,scores={area2SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=3}] as @e[type=marker,tag=saRespawnPoint,scores={area3SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=4}] as @e[type=marker,tag=saRespawnPoint,scores={area4SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found
execute if entity @s[scores={pCurrentArea=3,seekSpawnpoint=5}] as @e[type=marker,tag=saRespawnPoint,scores={area5SpawnC=1},limit=1,sort=nearest] run function phan:game/1/player/seek_spawnpoint_found

#adopt coordinates if we found some
execute if score #success value matches 1 run function phan:game/1/player/seek_spawnpoint_adopt