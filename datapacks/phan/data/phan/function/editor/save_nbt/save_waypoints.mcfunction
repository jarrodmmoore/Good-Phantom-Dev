#waypoints
execute as @e[type=marker,tag=AIBC] if score @s AIBC_id matches -2147483648..2147483647 unless score @s AIBC_id matches 0 run function phan:editor/save_nbt/waypoint_standard