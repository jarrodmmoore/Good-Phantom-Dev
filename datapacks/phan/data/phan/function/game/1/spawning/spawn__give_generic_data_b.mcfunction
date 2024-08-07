#nodeArea2

tag @e[tag=setMe,distance=..2] add act2Spawn

execute if entity @s[tag=nodeLoadArea0] run scoreboard players set @e[tag=setMe,distance=..2] area0SpawnB 1
execute if entity @s[tag=nodeLoadArea1] run scoreboard players set @e[tag=setMe,distance=..2] area1SpawnB 1
execute if entity @s[tag=nodeLoadArea2] run scoreboard players set @e[tag=setMe,distance=..2] area2SpawnB 1
execute if entity @s[tag=nodeLoadArea3] run scoreboard players set @e[tag=setMe,distance=..2] area3SpawnB 1
execute if entity @s[tag=nodeLoadArea4] run scoreboard players set @e[tag=setMe,distance=..2] area4SpawnB 1
execute if entity @s[tag=nodeLoadArea5] run scoreboard players set @e[tag=setMe,distance=..2] area5SpawnB 1