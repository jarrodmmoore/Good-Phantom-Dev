#count how many times this gets run in a single tick
scoreboard players add #playersInEditMode value 1

#if not in sync with global tick counter, we need to re-initialize some stuff
scoreboard players add @s editorTick 1
execute unless score @s editorTick = #join_global value run function phan:editor/_init_player

#show panel
execute if score @s editor matches 1 run function phan:editor/panel/_home

#eggs do their thing
execute as @e[tag=nodeSpawn,type=vex] at @s run function phan:editor/spawn/_index
execute as @e[tag=waypointSpawn,type=vex] at @s run function phan:editor/spawn/_index_waypoint

#save data on nodes as nbt
execute if score #playersInEditMode value matches ..1 run function phan:editor/save_nbt/_tick

#=====
#AI waypoint stuff

#handle holding special items
execute if items entity @s weapon.mainhand *[custom_data~{waypointTool:1b}] run function phan:editor/panel/ai_waypoint/tools/_holding_index

#draw ai waypoint trails
execute if score #playersInEditMode value matches ..1 as @e[type=area_effect_cloud,tag=waypointTrail] at @s run function phan:editor/panel/ai_waypoint/visualize/trail_entity_movement

#special editor states
execute if score @s AIBC_mode matches 1.. run function phan:editor/special_editor_states
#=====

#visualize the nodes
scoreboard players add @s editVisualTimer 1
scoreboard players set @s[scores={editVisualTimer=40..}] editVisualTimer 1
scoreboard players operation #editVisualTimer value = @s editVisualTimer
execute if score #playersInEditMode value matches ..1 as @e[tag=node,type=marker] at @s positioned ~ ~.2 ~ run function phan:editor/node_visualize/_tick
#draw checkpoint boundaries
execute if score #playersInEditMode value matches ..1 as @e[type=area_effect_cloud,tag=checkpointBound] at @s run function phan:editor/checkpoint/draw_line
#visualize AI waypoints
execute if score #playersInEditMode value matches ..1 if entity @a[tag=phan_edit,scores={editorState=3}] run function phan:editor/panel/ai_waypoint/visualize/_tick

#kick out of edit mode automatically if we go into adventure mode
execute if entity @s[gamemode=adventure] run function phan:editor/exit