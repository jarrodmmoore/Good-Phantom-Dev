#exit mode if we put the stick away
execute unless items entity @s weapon.mainhand stick[custom_data~{waypointSpread:1b}] run return run scoreboard players set @s AIBC_mode 0

#exit if we have an invalid selection score
execute if score @s AIBC_selected matches 0 run return run scoreboard players set @s AIBC_mode 0
execute unless score @s AIBC_selected matches -2147483648..2147483647 run return run scoreboard players set @s AIBC_mode 0

#=====
#only do the second half of this at 10Hz...
execute if score #10Hz value matches 0 run return 0

#record our coordinates
execute store result score #coord_x value run data get entity @s Pos[0]
execute store result score #coord_z value run data get entity @s Pos[2]

#highlight and send data to selected waypoint
execute store result storage phan:ai_waypoint selection int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/waypoint_spread/get_selected_waypoint with storage phan:ai_waypoint