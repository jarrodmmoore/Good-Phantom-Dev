#loading area check

#run our function again if we're not init
execute if entity @s[tag=nodeLoadArea0] if score #area0SpawnA value matches 1 unless entity @s[scores={area0SpawnA=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea1] if score #area1SpawnA value matches 1 unless entity @s[scores={area1SpawnA=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea2] if score #area2SpawnA value matches 1 unless entity @s[scores={area2SpawnA=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea3] if score #area3SpawnA value matches 1 unless entity @s[scores={area3SpawnA=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea4] if score #area4SpawnA value matches 1 unless entity @s[scores={area4SpawnA=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea5] if score #area5SpawnA value matches 1 unless entity @s[scores={area5SpawnA=1}] run function phan:game/1/spawning/spawn__index