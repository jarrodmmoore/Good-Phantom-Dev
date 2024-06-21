#nodeArea1

tag @e[tag=setMe] add act1Spawn

execute if entity @s[tag=nodeLoadArea0] run scoreboard players set @e[tag=setMe] area0SpawnA 1
execute if entity @s[tag=nodeLoadArea1] run scoreboard players set @e[tag=setMe] area1SpawnA 1
execute if entity @s[tag=nodeLoadArea2] run scoreboard players set @e[tag=setMe] area2SpawnA 1
execute if entity @s[tag=nodeLoadArea3] run scoreboard players set @e[tag=setMe] area3SpawnA 1
execute if entity @s[tag=nodeLoadArea4] run scoreboard players set @e[tag=setMe] area4SpawnA 1
execute if entity @s[tag=nodeLoadArea5] run scoreboard players set @e[tag=setMe] area5SpawnA 1