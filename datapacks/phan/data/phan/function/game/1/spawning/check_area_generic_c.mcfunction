#loading area check

#run our function again if we're not init
execute if entity @s[tag=nodeLoadArea0] if score #area0SpawnC value matches 1 unless entity @s[scores={area0SpawnC=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea1] if score #area1SpawnC value matches 1 unless entity @s[scores={area1SpawnC=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea2] if score #area2SpawnC value matches 1 unless entity @s[scores={area2SpawnC=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea3] if score #area3SpawnC value matches 1 unless entity @s[scores={area3SpawnC=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea4] if score #area4SpawnC value matches 1 unless entity @s[scores={area4SpawnC=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea5] if score #area5SpawnC value matches 1 unless entity @s[scores={area5SpawnC=1}] run function phan:game/1/spawning/spawn__index