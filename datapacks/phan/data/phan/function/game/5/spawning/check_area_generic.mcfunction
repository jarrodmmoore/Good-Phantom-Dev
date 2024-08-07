#loading area check

#run our function again if we're not init
execute if score #versusSpawn value matches 1 unless entity @s[scores={versusSpawn=1}] run function phan:game/5/spawning/spawn__index