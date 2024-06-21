#loading area check

#run our function again if we're not init
execute if entity @s[tag=nodeLoadArea0] if score #area0Spawn value matches 1 unless entity @s[scores={area0Spawn=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea1] if score #area1Spawn value matches 1 unless entity @s[scores={area1Spawn=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea2] if score #area2Spawn value matches 1 unless entity @s[scores={area2Spawn=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea3] if score #area3Spawn value matches 1 unless entity @s[scores={area3Spawn=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea4] if score #area4Spawn value matches 1 unless entity @s[scores={area4Spawn=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea5] if score #area5Spawn value matches 1 unless entity @s[scores={area5Spawn=1}] run function phan:game/1/spawning/spawn__index