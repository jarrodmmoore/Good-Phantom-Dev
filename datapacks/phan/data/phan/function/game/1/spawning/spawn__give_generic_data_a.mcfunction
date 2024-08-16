#nodeArea1

tag @e[tag=setMe,distance=..2] add act1Spawn

execute if entity @s[tag=nodeLoadArea0] run scoreboard players set @e[tag=setMe,distance=..4] area0SpawnA 1
execute if entity @s[tag=nodeLoadArea1] run scoreboard players set @e[tag=setMe,distance=..4] area1SpawnA 1
execute if entity @s[tag=nodeLoadArea2] run scoreboard players set @e[tag=setMe,distance=..4] area2SpawnA 1
execute if entity @s[tag=nodeLoadArea3] run scoreboard players set @e[tag=setMe,distance=..4] area3SpawnA 1
execute if entity @s[tag=nodeLoadArea4] run scoreboard players set @e[tag=setMe,distance=..4] area4SpawnA 1
execute if entity @s[tag=nodeLoadArea5] run scoreboard players set @e[tag=setMe,distance=..4] area5SpawnA 1