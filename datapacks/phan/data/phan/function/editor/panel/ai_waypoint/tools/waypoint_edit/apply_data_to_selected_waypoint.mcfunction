#(executed by player)

#feedback
playsound block.note_block.bit master @s ~ ~ ~ 2 1.25

#get the data
scoreboard players operation #waypointDir1 value = @s AIBC_dir1
scoreboard players operation #waypointDir2 value = @s AIBC_dir2
scoreboard players operation #waypointDir3 value = @s AIBC_dir3
scoreboard players operation #waypointDir4 value = @s AIBC_dir4
scoreboard players operation #waypointEvent value = @s AIBC_event
scoreboard players operation #waypointModifier value = @s AIBC_modifier
scoreboard players operation #waypointSpreadX value = @s AIBC_spread_x
scoreboard players operation #waypointSpreadZ value = @s AIBC_spread_z
execute store result score #waypointGround value run execute if entity @s[tag=AIBC_requireGround]
execute store result score #waypointHookLeft value run execute if entity @s[tag=AIBC_hookLeft]
execute store result score #waypointHookRight value run execute if entity @s[tag=AIBC_hookRight]
execute store result score #waypointMidAir value run execute if entity @s[tag=AIBC_midAir]

#apply to node
execute store result storage phan:ai_waypoint selected int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/apply_data_to_selected_waypoint_macro with storage phan:ai_waypoint