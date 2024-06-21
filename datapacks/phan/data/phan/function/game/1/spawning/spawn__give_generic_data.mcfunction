#this helps our "setMe" entity delete itself when its area de re-loaded or de-loaded

#section tag
execute if entity @s[tag=nodeArea1] run function phan:game/1/spawning/spawn__give_generic_data_a
execute if entity @s[tag=nodeArea2] run function phan:game/1/spawning/spawn__give_generic_data_b
execute if entity @s[tag=nodeArea3] run function phan:game/1/spawning/spawn__give_generic_data_c

#act tag
execute if entity @s[tag=nodeLoadArea0] run tag @e[tag=setMe] add area0Spawn
execute if entity @s[tag=nodeLoadArea1] run tag @e[tag=setMe] add area1Spawn
execute if entity @s[tag=nodeLoadArea2] run tag @e[tag=setMe] add area2Spawn
execute if entity @s[tag=nodeLoadArea3] run tag @e[tag=setMe] add area3Spawn
execute if entity @s[tag=nodeLoadArea4] run tag @e[tag=setMe] add area4Spawn
execute if entity @s[tag=nodeLoadArea5] run tag @e[tag=setMe] add area5Spawn

#enemy gets movement pattern if we have one defined
execute if score @s editNode matches 13 if score @s editArg3 matches 1.. run scoreboard players operation @e[tag=setMe] movementPattern = @s editArg3