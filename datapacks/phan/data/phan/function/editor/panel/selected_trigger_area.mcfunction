tellraw @s ["",{"text":"\n==\\/== MODIFY TRIGGER AREA ==\\/==","color":"#6666FF","bold":true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Trigger area"}]
tellraw @s ["",{"text":"[Set minimum xyz]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_min_xyz"},"hoverEvent":{"action":"show_text","value":"set min xyz"}}]
tellraw @s ["",{"text":"[Set maximum xyz]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_max_xyz"},"hoverEvent":{"action":"show_text","value":"set max xyz"}}]
tellraw @s ["",{"text":"[Set min/max y very tall]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_y_tall"},"hoverEvent":{"action":"show_text","value":"set min/max y very tall"}}]
tellraw @s ["",{"text":"[Set boundary]","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":"set boundary"}}]
tellraw @s ["",{"text":"[Add to boundary]","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players add @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":"add to boundary"}}]
tellraw @s ["",{"text":"[Remove from boundary]","color":"gray","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players remove @e[tag=selected] checkM"},"hoverEvent":{"action":"show_text","value":"remove from boundary"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[back]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":"back"}}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0