#clear cache first before doing anything if that was requested
execute if score #clearCacheProgress value matches 1.. run return 0
#=====

scoreboard players add #restore_nbt_tick value 1
execute if score #restore_nbt_tick value matches 6 run function phan:editor/restore_using_nbt/restore_waypoints
execute if score #restore_nbt_tick value matches 12.. run function phan:editor/restore_using_nbt/restore_nodes