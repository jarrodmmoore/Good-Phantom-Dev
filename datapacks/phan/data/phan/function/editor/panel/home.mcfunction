#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{"text":"\n==\\/== EDITOR ==\\/==","color":"#6666FF","bold":true}]
tellraw @s ["",{"text":"[nodes]","color":"#AAFFAA","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/spawn"},"hoverEvent":{"action":"show_text","value":"nodes"}}]
tellraw @s ["",{"text":"[modify selected trigger area]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/selected_trigger_area"},"hoverEvent":{"action":"show_text","value":"modify selected trigger area"}}]
tellraw @s ["",{"text":"[modify selected checkpoint]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/selected_checkpoint"},"hoverEvent":{"action":"show_text","value":"modify selected checkpoint"}}]
tellraw @s ["",{"text":"[respawn objects]","color":"#55FF55","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/respawns"},"hoverEvent":{"action":"show_text","value":"respawn objects in a specified area"}}]
tellraw @s ["",{"text":" "}]
execute if entity @e[tag=selected] run function phan:editor/panel/show_number_selected
tellraw @s ["",{"text":"[select nearest]","color":"#CCCCCC","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/select_nearest"},"hoverEvent":{"action":"show_text","value":"select nearest"}}]
tellraw @s ["",{"text":"[nudge selected]","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=selected] at @s run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"nudge selected"}}]
tellraw @s ["",{"text":"[modify selected]","color":"#AAAAAA","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=selected] edit"},"hoverEvent":{"action":"show_text","value":"modify selected"}}]
tellraw @s ["",{"text":"[cancel selection]","color":"#777777","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/select_none"},"hoverEvent":{"action":"show_text","value":"cancel selection"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[erase selected]","color":"#FF9999","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/erase_selected"},"hoverEvent":{"action":"show_text","value":"erase selected"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[exit]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/exit"},"hoverEvent":{"action":"show_text","value":"exit"}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{"translate":"commands.gamemode.success.self","italic":true,"with":[{"translate":"gp.misc.creative_mode","italic":true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0