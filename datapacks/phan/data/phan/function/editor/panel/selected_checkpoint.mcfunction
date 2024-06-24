tellraw @s ["",{"text":"\n==\\/== MODIFY SELECTED CHECKPOINTS ==\\/==","color":"#6666FF","bold":true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Tags"}]
tellraw @s ["",{"text":"[Toggle position calc point]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/toggle_position_calc"},"hoverEvent":{"action":"show_text","value":"toggle position calc point (NEED EXACTLY 1 PER CHECKPOINT NUMBER)"}}]
tellraw @s ["",{"text":"[Toggle launch upward on respawn]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/toggle_launch_upward"},"hoverEvent":{"action":"show_text","value":"toggle launch upward on respawn"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Visual line (mandatory checkpoints only)"}]
tellraw @s ["",{"text":"[disable]","color":"#999999","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/disable_visual"},"hoverEvent":{"action":"show_text","value":"disable visual"}}]
tellraw @s ["",{"text":"[Set pos 1]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_line_pos_1"},"hoverEvent":{"action":"show_text","value":"set pos 1"}}]
tellraw @s ["",{"text":"[Set pos 2]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/set_line_pos_2"},"hoverEvent":{"action":"show_text","value":"set pos 2"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Warnings (also force respawns on players))"}]
tellraw @s ["",{"text":"[Toggle missed cp warning]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/toggle_missed_cp_warning"},"hoverEvent":{"action":"show_text","value":"toggle missed cp warning"}}]
tellraw @s ["",{"text":"[Toggle wrong way warning]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/checkpoint/toggle_wrong_way_warning"},"hoverEvent":{"action":"show_text","value":"toggle wrong way warning"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[get tag command]","color":"gold","bold":false,"clickEvent":{"action":"suggest_command","value":"/tag @e[limit=1,sort=nearest,tag=checkpoint] add "},"hoverEvent":{"action":"show_text","value":"toggle missed cp warning"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[back]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":"back"}}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0