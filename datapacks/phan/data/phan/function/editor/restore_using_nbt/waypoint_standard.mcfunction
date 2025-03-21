#generic data pt 1
execute store result score @s AIBC_id run data get entity @s data.WaypointData[0] 1

#quit out if bad data (minecraft does this sometimes...)
execute if score @s AIBC_id matches 0 run return run scoreboard players reset @s AIBC_id

#generic data pt 2
execute store result score @s AIBC_dir1 run data get entity @s data.WaypointData[1] 1
execute store result score @s AIBC_dir2 run data get entity @s data.WaypointData[2] 1
execute store result score @s AIBC_dir3 run data get entity @s data.WaypointData[3] 1
execute store result score @s AIBC_dir4 run data get entity @s data.WaypointData[4] 1
execute store result score @s AIBC_event run data get entity @s data.WaypointData[5] 1
execute store result score @s AIBC_modifier run data get entity @s data.WaypointData[6] 1
execute store result score @s AIBC_spread_x run data get entity @s data.WaypointData[7] 1
execute store result score @s AIBC_spread_z run data get entity @s data.WaypointData[8] 1

#null any 0s
execute if score @s AIBC_dir1 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir2 matches 0 run scoreboard players reset @s AIBC_dir2
execute if score @s AIBC_dir3 matches 0 run scoreboard players reset @s AIBC_dir3
execute if score @s AIBC_dir4 matches 0 run scoreboard players reset @s AIBC_dir4
execute if score @s AIBC_event matches 0 run scoreboard players reset @s AIBC_event
execute if score @s AIBC_modifier matches 0 run scoreboard players reset @s AIBC_modifier
execute if score @s AIBC_spread_x matches 0 run scoreboard players reset @s AIBC_spread_x
execute if score @s AIBC_spread_z matches 0 run scoreboard players reset @s AIBC_spread_z

