#put one here first before recursion
function phan:game/1/spawning/spawn_stardust

#get ready to recursion like an absolute sociopath
scoreboard players operation #spawnRecursions value = @s editArg2
scoreboard players operation #spaceRecursions value = @s editArg3
execute if score #spaceRecursions value matches ..0 run scoreboard players set #spaceRecursions value 1

#go to prep school (ew)
scoreboard players operation #tempRecursions value = #spaceRecursions value
execute positioned ^ ^ ^1 run function phan:game/1/spawning/spawn_stardust_prep