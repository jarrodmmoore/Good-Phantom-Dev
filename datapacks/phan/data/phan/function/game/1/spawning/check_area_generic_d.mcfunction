#loading area check

#run our function again if we're not init
execute if entity @s[tag=nodeLoadArea0] if score #area0SpawnD value matches 1 unless entity @s[scores={area0SpawnD=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea1] if score #area1SpawnD value matches 1 unless entity @s[scores={area1SpawnD=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea2] if score #area2SpawnD value matches 1 unless entity @s[scores={area2SpawnD=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea3] if score #area3SpawnD value matches 1 unless entity @s[scores={area3SpawnD=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea4] if score #area4SpawnD value matches 1 unless entity @s[scores={area4SpawnD=1}] run function phan:game/1/spawning/spawn__index
execute if entity @s[tag=nodeLoadArea5] if score #area5SpawnD value matches 1 unless entity @s[scores={area5SpawnD=1}] run function phan:game/1/spawning/spawn__index