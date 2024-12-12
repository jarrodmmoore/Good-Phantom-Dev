#clear cache first before doing anything if that was requested
execute if score #clearCacheProgress value matches 1.. run return run function phan:editor/clear_scoreboard_cache
#=====

scoreboard players add #restore_nbt_tick value 1
execute if score #restore_nbt_tick value matches 4 run function phan:editor/restore_using_nbt/restore_waypoints
execute if score #restore_nbt_tick value matches 8.. run function phan:editor/restore_using_nbt/restore_nodes