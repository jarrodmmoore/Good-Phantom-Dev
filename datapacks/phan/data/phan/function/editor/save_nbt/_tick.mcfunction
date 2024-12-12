#don't do anything while cache is being cleared
execute if score #clearCacheProgress value matches 1.. run return 0
#=====

scoreboard players add #save_nbt_tick value 1
execute if score #save_nbt_tick value matches 4 run function phan:editor/save_nbt/save_waypoints
execute if score #save_nbt_tick value matches 8.. run function phan:editor/save_nbt/save_nodes