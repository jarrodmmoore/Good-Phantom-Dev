#this helps our "setMe" entity delete itself when its area de re-loaded or de-loaded

execute if entity @s[tag=area0Spawn] run tag @e[tag=setMe,distance=..2] add area0Spawn
execute if entity @s[tag=area1Spawn] run tag @e[tag=setMe,distance=..2] add area1Spawn
execute if entity @s[tag=area2Spawn] run tag @e[tag=setMe,distance=..2] add area2Spawn
execute if entity @s[tag=area3Spawn] run tag @e[tag=setMe,distance=..2] add area3Spawn
execute if entity @s[tag=area4Spawn] run tag @e[tag=setMe,distance=..2] add area4Spawn
execute if entity @s[tag=area5Spawn] run tag @e[tag=setMe,distance=..2] add area5Spawn

execute if entity @s[tag=act1Spawn] run tag @e[tag=setMe,distance=..2] add act1Spawn
execute if entity @s[tag=act2Spawn] run tag @e[tag=setMe,distance=..2] add act2Spawn
execute if entity @s[tag=act3Spawn] run tag @e[tag=setMe,distance=..2] add act3Spawn

execute if entity @s[tag=area0Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area0SpawnA 1
execute if entity @s[tag=area1Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area1SpawnA 1
execute if entity @s[tag=area2Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area2SpawnA 1
execute if entity @s[tag=area3Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area3SpawnA 1
execute if entity @s[tag=area4Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area4SpawnA 1
execute if entity @s[tag=area5Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area5SpawnA 1

execute if entity @s[tag=area0Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area0SpawnB 1
execute if entity @s[tag=area1Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area1SpawnB 1
execute if entity @s[tag=area2Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area2SpawnB 1
execute if entity @s[tag=area3Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area3SpawnB 1
execute if entity @s[tag=area4Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area4SpawnB 1
execute if entity @s[tag=area5Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area5SpawnB 1

execute if entity @s[tag=area0Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area0SpawnC 1
execute if entity @s[tag=area1Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area1SpawnC 1
execute if entity @s[tag=area2Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area2SpawnC 1
execute if entity @s[tag=area3Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area3SpawnC 1
execute if entity @s[tag=area4Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area4SpawnC 1
execute if entity @s[tag=area5Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe,distance=..2] area5SpawnC 1

#inherit movement pattern if we have one
execute if score @s movementPattern matches 1.. run scoreboard players operation @e[tag=setMe,distance=..2] movementPattern = @s movementPattern

#give enemyID if we care about that
execute if entity @s[tag=repeatSpawn] run scoreboard players operation @e[tag=setMe,distance=..2] enemyID = @s enemyID
execute if entity @s[tag=repeatSpawn] run tag @e[tag=setMe,distance=..2] add baddyWithID