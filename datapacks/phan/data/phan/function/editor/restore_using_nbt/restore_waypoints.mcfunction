#must either be in Portal Race mode OR have 1 player in editor mode
execute store result score #test value run execute if entity @a[tag=phan_edit]
execute if score #gameState value matches 4 run scoreboard players add #test value 1
execute if score #test value matches 0 run return 0
#=====

execute as @e[type=marker,tag=waypoint] unless score @s AIBC_id matches -2147483648..2147483647 run function phan:editor/restore_using_nbt/waypoint_standard