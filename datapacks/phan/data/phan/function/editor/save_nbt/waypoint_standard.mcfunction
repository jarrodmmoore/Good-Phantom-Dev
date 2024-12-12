#array of 7 ints
data modify entity @s data.WaypointData set value [0,0,0,0,0,0,0]

execute store result entity @s data.WaypointData[0] int 1 run scoreboard players get @s AIBC_id
execute store result entity @s data.WaypointData[1] int 1 run scoreboard players get @s AIBC_dir1
execute store result entity @s data.WaypointData[2] int 1 run scoreboard players get @s AIBC_dir2
execute store result entity @s data.WaypointData[3] int 1 run scoreboard players get @s AIBC_dir3
execute store result entity @s data.WaypointData[4] int 1 run scoreboard players get @s AIBC_dir4
execute store result entity @s data.WaypointData[5] int 1 run scoreboard players get @s AIBC_event
execute store result entity @s data.WaypointData[6] int 1 run scoreboard players get @s AIBC_modifier