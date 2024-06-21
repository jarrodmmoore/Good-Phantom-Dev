scoreboard players remove #recursions value 1

#replace lapis with air
execute if block ~ ~ ~ lapis_block run setblock ~ ~ ~ air

#keep going up until we hit a structure void
execute positioned ~ ~1 ~ if block ~ ~ ~ #phan:column_cleanup if score #recursions value matches 1.. run function phan:utility/cleanup_up