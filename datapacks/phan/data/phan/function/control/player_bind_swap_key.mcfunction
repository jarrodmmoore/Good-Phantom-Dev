#toggle binding
scoreboard players add @s swapKeyBind 1
execute if score @s swapKeyBind matches 5.. run scoreboard players set @s swapKeyBind 0
#0 = boost
#1 = bite
#2 = light projectile
#3 = heavy projectile
#4 = ever eye

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 2
tellraw @s ["",{"text":" "}]
execute if score @s swapKeyBind matches ..0 run tellraw @s ["",{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":" "},{"translate":"gp.key_bound","with":[{"translate":"gp.game.boost","color":"aqua"}]}]
execute if score @s swapKeyBind matches 1 run tellraw @s ["",{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":" "},{"translate":"gp.key_bound","with":[{"translate":"gp.game.bite","color":"aqua"}]}]
execute if score @s swapKeyBind matches 2 run tellraw @s ["",{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":" "},{"translate":"gp.key_bound","with":[{"translate":"gp.game.light_projectile","color":"aqua"}]}]
execute if score @s swapKeyBind matches 3 run tellraw @s ["",{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":" "},{"translate":"gp.key_bound","with":[{"translate":"gp.game.heavy_projectile","color":"aqua"}]}]
execute if score @s swapKeyBind matches 4.. run tellraw @s ["",{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":" "},{"translate":"gp.key_bound","with":[{"translate":"gp.game.ever_eye","color":"#BB33FF"}]}]

#reset trigger
scoreboard players reset @s bindSwapKey