#this helps our "setMe" entity delete itself when its area de re-loaded or de-loaded

execute if entity @s[tag=area0Spawn] run tag @e[tag=setMe] add area0Spawn
execute if entity @s[tag=area1Spawn] run tag @e[tag=setMe] add area1Spawn
execute if entity @s[tag=area2Spawn] run tag @e[tag=setMe] add area2Spawn
execute if entity @s[tag=area3Spawn] run tag @e[tag=setMe] add area3Spawn
execute if entity @s[tag=area4Spawn] run tag @e[tag=setMe] add area4Spawn
execute if entity @s[tag=area5Spawn] run tag @e[tag=setMe] add area5Spawn

execute if entity @s[tag=act1Spawn] run tag @e[tag=setMe] add act1Spawn
execute if entity @s[tag=act2Spawn] run tag @e[tag=setMe] add act2Spawn
execute if entity @s[tag=act3Spawn] run tag @e[tag=setMe] add act3Spawn

execute if entity @s[tag=area0Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area0SpawnA 1
execute if entity @s[tag=area1Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area1SpawnA 1
execute if entity @s[tag=area2Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area2SpawnA 1
execute if entity @s[tag=area3Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area3SpawnA 1
execute if entity @s[tag=area4Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area4SpawnA 1
execute if entity @s[tag=area5Spawn,tag=act1Spawn] run scoreboard players set @e[tag=setMe] area5SpawnA 1

execute if entity @s[tag=area0Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area0SpawnB 1
execute if entity @s[tag=area1Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area1SpawnB 1
execute if entity @s[tag=area2Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area2SpawnB 1
execute if entity @s[tag=area3Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area3SpawnB 1
execute if entity @s[tag=area4Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area4SpawnB 1
execute if entity @s[tag=area5Spawn,tag=act2Spawn] run scoreboard players set @e[tag=setMe] area5SpawnB 1

execute if entity @s[tag=area0Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area0SpawnC 1
execute if entity @s[tag=area1Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area1SpawnC 1
execute if entity @s[tag=area2Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area2SpawnC 1
execute if entity @s[tag=area3Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area3SpawnC 1
execute if entity @s[tag=area4Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area4SpawnC 1
execute if entity @s[tag=area5Spawn,tag=act3Spawn] run scoreboard players set @e[tag=setMe] area5SpawnC 1

#inherit movement pattern if we have one
execute if score @s movementPattern matches 1.. run scoreboard players operation @e[tag=setMe] movementPattern = @s movementPattern

#give enemyID if we care about that
execute if entity @s[tag=repeatSpawn] run scoreboard players operation @e[tag=setMe] enemyID = @s enemyID
execute if entity @s[tag=repeatSpawn] run tag @e[tag=setMe] add baddyWithID