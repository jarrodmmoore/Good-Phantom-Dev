#must have tools!
execute unless items entity @s hotbar.* piglin_spawn_egg unless items entity @s inventory.* piglin_spawn_egg run function phan:editor/panel/ai_waypoint/give_tools

#=====

#menu title
tellraw @s ["",{"text":"\n==\\/== ","color":"#FF3333","bold":true},{"translate":"gp.editor.title.create_ai_waypoint","color":"#FF3333","bold":true},{"text":" ==\\/==","color":"#FF3333","bold":true}]

#waypoint parameters
function phan:editor/panel/ai_waypoint/_waypoint_menu

#=====

tellraw @s ["",{"translate":"gp.editor.button.zero_all","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/zero"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.zero_all"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.back","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/_meta_menu"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.back"}]}}]

#feedback
playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0