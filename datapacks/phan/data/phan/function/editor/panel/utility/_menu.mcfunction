#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{"text":"\n==\\/== ","color":"#00AA33","bold":true},{"translate":"gp.editor.title.utilities","color":"#00AA33","bold":true},{"text":" ==\\/==","color":"#00AA33","bold":true}]
tellraw @s ["",{"text":"/scoreboard players set #vTimeLimit value 999999999","color":"dark_aqua","underlined":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #vTimeLimit value 999999999"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"/scoreboard players set @e[tag=ai,type=zombie] botHasItem","color":"dark_aqua","underlined":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=ai,type=zombie] botHasItem"}}]
tellraw @s ["",{"text":"/scoreboard players set @e[tag=ai,type=zombie] energy 18","color":"dark_aqua","underlined":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=ai,type=zombie] energy 18"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"translate":"gp.editor.button.back","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.editor.hover.back"}]}}]

#make sure we're in the proper editor state
scoreboard players set @s editorState 2

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0