scoreboard players remove #recursions value 1

execute if block ~ ~ ~ air run scoreboard players set #findBlock value 1

#start caring once we hit a non-air block
execute if score #findBlock value matches 1 unless block ~ ~ ~ air run scoreboard players set #findBlock value 2

#fill with void
execute if block ~ ~ ~ air run setblock ~ ~ ~ structure_void

#keep going up until we hit a structure void
execute positioned ~ ~-1 ~ if score #findBlock value matches ..1 if score #recursions value matches 1.. run function phan:utility/simplify_clouds_down