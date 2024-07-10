#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{"text":"\n==\\/== ","color":"#6666FF","bold":true},{"translate":"gp.editor.title.editor","color":"#6666FF","bold":true},{"text":" ==\\/==","color":"#6666FF","bold":true}]
tellraw @s ["",{"translate":"gp.editor.button.nodes","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_meta_menu"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.nodes"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.ai_waypoints","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/_meta_menu"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.ai_waypoints"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.exit","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/exit"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.exit"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{"translate":"commands.gamemode.success.self","italic":true,"with":[{"translate":"gp.misc.creative_mode","italic":true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 1

#clear node and waypoint items when in home panel
clear @s *[custom_data~{nodeTool:1b}]
clear @s *[custom_data~{waypointTool:1b}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0