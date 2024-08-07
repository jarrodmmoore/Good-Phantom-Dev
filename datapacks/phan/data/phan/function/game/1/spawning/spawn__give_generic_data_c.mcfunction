#nodeArea3

tag @e[tag=setMe,distance=..2] add act3Spawn

execute if entity @s[tag=nodeLoadArea0] run scoreboard players set @e[tag=setMe,distance=..2] area0SpawnC 1
execute if entity @s[tag=nodeLoadArea1] run scoreboard players set @e[tag=setMe,distance=..2] area1SpawnC 1
execute if entity @s[tag=nodeLoadArea2] run scoreboard players set @e[tag=setMe,distance=..2] area2SpawnC 1
execute if entity @s[tag=nodeLoadArea3] run scoreboard players set @e[tag=setMe,distance=..2] area3SpawnC 1
execute if entity @s[tag=nodeLoadArea4] run scoreboard players set @e[tag=setMe,distance=..2] area4SpawnC 1
execute if entity @s[tag=nodeLoadArea5] run scoreboard players set @e[tag=setMe,distance=..2] area5SpawnC 1