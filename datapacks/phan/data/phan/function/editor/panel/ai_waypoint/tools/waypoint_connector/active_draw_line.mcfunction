$tag @e[type=marker,tag=AIBC,scores={AIBC_id=$(selection)},limit=1,sort=nearest] add sourceWaypoint
execute if score @s AIBC_set_dir matches 1 facing entity @e[type=marker,tag=sourceWaypoint] feet run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line_go1
execute if score @s AIBC_set_dir matches 2 facing entity @e[type=marker,tag=sourceWaypoint] feet run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line_go2
execute if score @s AIBC_set_dir matches 3 facing entity @e[type=marker,tag=sourceWaypoint] feet run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line_go3
execute if score @s AIBC_set_dir matches 4 facing entity @e[type=marker,tag=sourceWaypoint] feet run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line_go4
execute if score @s AIBC_set_dir matches 5 facing entity @e[type=marker,tag=sourceWaypoint] feet run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line_go5
tag @e[tag=sourceWaypoint] remove sourceWaypoint