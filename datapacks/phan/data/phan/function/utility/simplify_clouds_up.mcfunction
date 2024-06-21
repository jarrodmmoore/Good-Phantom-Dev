scoreboard players remove #recursions value 1

#start caring once we hit a non-air block
execute unless block ~ ~ ~ air run scoreboard players set #findBlock value 1

#fill with lapis
execute if score #findBlock value matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ lapis_block

#keep going up until we hit a structure void
execute positioned ~ ~1 ~ unless block ~ ~ ~ #phan:stop_simplify if score #recursions value matches 1.. run function phan:utility/simplify_clouds_up