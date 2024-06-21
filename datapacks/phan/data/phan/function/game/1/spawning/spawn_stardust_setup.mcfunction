scoreboard players set #spawnRecursions value 0

#spawn just 1 or a trail of them?
execute if score @s editArg2 matches ..0 run function phan:game/1/spawning/spawn_stardust

#verify that chunks are loaded before we try to spawn a trail
scoreboard players set #checkChunksLoaded value 1
scoreboard players set #checkRecursions value 1
execute if score @s editArg2 matches 1.. run function phan:game/1/spawning/check_loaded_recursion

#good to go? spawn the trail
execute if score @s editArg2 matches 1.. if score #checkChunksLoaded value matches 1 run function phan:game/1/spawning/spawn_stardust_recursion
execute if score @s editArg2 matches 1.. if score #checkChunksLoaded value matches 0 run tag @s add spawn_failed
#Q: why trails? why not just place a bunch of stardust in a row?
#A: we can use trails to cut down on the number of marker entities in the world, meaning there are less nodes that have to check spawn conditions.
#... it also allows us to spawn a bunch of them in a perfectly neat row at weird angles if we want.