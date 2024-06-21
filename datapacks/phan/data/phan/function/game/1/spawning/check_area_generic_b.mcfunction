#loading area check

#run our function again if we're not init
execute if entity @s[tag=nodeLoadArea0] if score #area0SpawnB value matches 1 unless entity @s[scores={area0SpawnB=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea1] if score #area1SpawnB value matches 1 unless entity @s[scores={area1SpawnB=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea2] if score #area2SpawnB value matches 1 unless entity @s[scores={area2SpawnB=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea3] if score #area3SpawnB value matches 1 unless entity @s[scores={area3SpawnB=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea4] if score #area4SpawnB value matches 1 unless entity @s[scores={area4SpawnB=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea5] if score #area5SpawnB value matches 1 unless entity @s[scores={area5SpawnB=1}] run function phan:game/1/spawning/spawn__index