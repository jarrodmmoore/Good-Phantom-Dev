tellraw @s ["",{"text":"\n==\\/== ","color":"#6666FF","bold":true},{"translate":"gp.editor.title.modify_trigger_area","color":"#6666FF","bold":true},{"text":" ==\\/==","color":"#6666FF","bold":true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.header.trigger_area"}]
tellraw @s ["",{"translate":"gp.editor.button.set_min_xyz","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_min_xyz"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.set_min_xyz"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.set_max_xyz","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_max_xyz"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.set_max_xyz"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.set_min_max_tall","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_y_tall"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.set_min_max_tall"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.set_boundary","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.set_boundary"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.add_to_boundary","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players add @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.add_to_boundary"}]}}]
tellraw @s ["",{"translate":"gp.editor.button.subtract_from_boundary","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players remove @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.subtract_from_boundary"}]}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.back","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.back"}]}}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0