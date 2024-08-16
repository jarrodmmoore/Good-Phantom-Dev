#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{"text":"\n==\\/== ","color":"#6666FF","bold":true},{"translate":"gp.editor.title.node_editor","color":"#6666FF","bold":true},{"text":" ==\\/==","color":"#6666FF","bold":true}]
tellraw @s ["",{"translate":"gp.editor.button.create_nodes","color":"#AAFFAA","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_spawn"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.create_nodes"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.modify_selected_trigger","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/selected_trigger_area"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.modify_selected_trigger"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.modify_selected_checkpoint","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/selected_checkpoint"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.modify_selected_checkpoint"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.respawn_objects","color":"#55FF55","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/respawns"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.respawn_objects"}]}}]
tellraw @s ["",{"text":" "}]
execute if entity @e[tag=selected] run function phan:editor/panel/show_number_selected
tellraw @s ["",{"translate":"gp.editor.button.select_nearest","color":"#CCCCCC","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/select_nearest"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.select_nearest"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.nudge_selected","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=selected] at @s run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.nudge_selected"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.modify_selected","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=selected] edit"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.modify_selected"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.cancel_selection","color":"#777777","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/select_none"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.cancel_selection"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.editor.erase_selected","color":"#FF9999","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/erase_selected"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.erase_selected"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.back","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.back"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{"translate":"commands.gamemode.success.self","italic":true,"with":[{"translate":"gp.misc.creative_mode","italic":true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 2

#clear waypoint editor items when in home panel
clear @s *[custom_data~{waypointTool:1b}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0