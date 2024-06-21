#deal with recursions
scoreboard players remove #checkRecursions value 1

#################
#if we got in here: the chunk is loaded! we're good... for now
scoreboard players set #checkChunksLoaded value 1
#################

#no recursions left? tell the rest of the recursive command stack to get bent
execute if score #checkRecursions value matches ..0 run scoreboard players set #tempRecursions value -1

#keep going if we still have more recursions left
execute if score #checkRecursions value matches 1.. run scoreboard players operation #tempRecursions value = #spaceRecursions value
execute if score #checkRecursions value matches 1.. positioned ^ ^ ^1 run function phan:game/1/spawning/check_loaded_prep