#(executed by player)

#get data from the node
execute store result storage phan:ai_waypoint selected int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/import_data_from_selected_waypoint_macro with storage phan:ai_waypoint

#apply copied data to ourselves
scoreboard players operation @s AIBC_dir1 = #waypointDir1 value
scoreboard players operation @s AIBC_dir2 = #waypointDir2 value
scoreboard players operation @s AIBC_dir3 = #waypointDir3 value
scoreboard players operation @s AIBC_dir4 = #waypointDir4 value
scoreboard players operation @s AIBC_event = #waypointEvent value
scoreboard players operation @s AIBC_modifier = #waypointModifier value
scoreboard players operation @s AIBC_spread_x = #waypointSpreadX value
scoreboard players operation @s AIBC_spread_z = #waypointSpreadZ value
tag @s remove AIBC_requireGround
tag @s remove AIBC_hookLeft
tag @s remove AIBC_hookRight
tag @s remove AIBC_midAir
tag @s remove AIBC_lowHeight
tag @s remove eventHighSkill
tag @s remove eventBadSkill
execute if score #waypointGround value matches 1 run tag @s add AIBC_requireGround
execute if score #waypointHookLeft value matches 1 run tag @s add AIBC_hookLeft
execute if score #waypointHookRight value matches 1 run tag @s add AIBC_hookRight
execute if score #waypointMidAir value matches 1 run tag @s add AIBC_midAir
execute if score #waypointLowHeight value matches 1 run tag @s add AIBC_lowHeight
execute if score #waypointHighSkill value matches 1 run tag @s add eventHighSkill
execute if score #waypointBadSkill value matches 1 run tag @s add eventBadSkill