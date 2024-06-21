scoreboard players remove #spawnRecursions value 1

#hello developer! i am going to spawn something here one day
particle happy_villager ~ ~ ~ 0 0 0 0 1

#no recursions left? tell the rest of the recursive command stack to get bent
execute if score #spawnRecursions value matches ..0 run scoreboard players set #tempRecursions value -1

#keep going if we still have more recursions left
execute if score #spawnRecursions value matches 1.. run scoreboard players operation #tempRecursions value = #spaceRecursions value
execute if score #spawnRecursions value matches 1.. positioned ^ ^ ^1 run function phan:editor/node_visualize_spawn_recursion_prep