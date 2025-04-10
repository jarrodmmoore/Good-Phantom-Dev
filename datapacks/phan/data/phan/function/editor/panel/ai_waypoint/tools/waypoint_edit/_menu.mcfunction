#import data from selected
execute if entity @s[tag=importSelectedWaypoint] run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/import_data_from_selected_waypoint

#show all fields!
scoreboard players add @s AIBC_dir1 0
scoreboard players add @s AIBC_dir2 0
scoreboard players add @s AIBC_dir3 0
scoreboard players add @s AIBC_dir4 0
scoreboard players add @s AIBC_modifier 0
scoreboard players add @s AIBC_spread_x 0
scoreboard players add @s AIBC_spread_z 0

#=====

#menu title
tellraw @s ["",{text:"\n==\\/== ",color:"#FF3333",bold:true},{translate:"gp.editor.title.modify_ai_waypoint",color:"#FF3333",bold:true},{text:" ==\\/==",color:"#FF3333",bold:true}]

#waypoint parameters
function phan:editor/panel/ai_waypoint/_waypoint_menu

#done button
tellraw @s ["",{text:"[done]",color:"gold",bold:false,click_event:{action:"run_command",command:"/function phan:editor/panel/ai_waypoint/tools/waypoint_edit/abort"},hover_event:{action:"show_text",value:"done"}}]

#=====

#apply data to selected
execute if entity @s[tag=!importSelectedWaypoint] run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/apply_data_to_selected_waypoint

#clean up tags
tag @s remove importSelectedWaypoint
tag @s remove showAllFields