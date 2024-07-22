#must have tools!
execute unless items entity @s hotbar.* piglin_spawn_egg unless items entity @s inventory.* piglin_spawn_egg run function phan:editor/panel/ai_waypoint/give_tools

#=====

#ai waypoint home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{"text":"\n==\\/== ","color":"#FF3333","bold":true},{"translate":"gp.editor.title.ai_waypoint_editor","color":"#FF3333","bold":true},{"text":" ==\\/==","color":"#FF3333","bold":true}]
tellraw @s ["",{"translate":"gp.editor.button.create_ai_waypoints","color":"#AAFFAA","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/_spawn_menu"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.create_ai_waypoints"}]}}]
tellraw @s ["",{"text":" "}]
execute unless score @s AIBC_set_dir matches 1..5 run tellraw @s ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"white"}]}]
tellraw @s[scores={AIBC_set_dir=1}] ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"green"}]}]
tellraw @s[scores={AIBC_set_dir=2}] ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"aqua"}]}]
tellraw @s[scores={AIBC_set_dir=3}] ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"#00CC00"}]}]
tellraw @s[scores={AIBC_set_dir=4}] ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"#4444FF"}]}]
tellraw @s[scores={AIBC_set_dir=5}] ["",{"text":"[<] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_decrement"}},{"text":"[>] ","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/connector_set_dir_increment"}},{"translate":"gp.editor.info.waypoint_connector_setting","with":[{"score":{"name":"@s","objective":"AIBC_set_dir"},"color":"yellow"}]}]
tellraw @s ["",{"text":" "}]
execute if entity @e[tag=selectedWaypoint] run function phan:editor/panel/ai_waypoint/show_number_selected
tellraw @s ["",{"translate":"gp.editor.button.select_nearest_waypoint","color":"#CCCCCC","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/select_nearest"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.select_nearest_waypoint"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.nudge_selected","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=selectedWaypoint] at @s run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.nudge_selected"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.modify_selected","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=selectedWaypoint] AIBC_"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.modify_selected"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.cancel_selection","color":"#777777","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/select_none"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.cancel_selection"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.editor.erase_selected","color":"#FF9999","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/erase_selected"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.erase_selected"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.repair_tags","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=AIBC,type=marker] run function phan:editor/panel/ai_waypoint/repair_tags"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.repair_tags_waypoint"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.back","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.back"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{"translate":"commands.gamemode.success.self","italic":true,"with":[{"translate":"gp.misc.creative_mode","italic":true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 3

#feedback
playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0