#do again in some amount of time
scoreboard players set @s playerTipTime -200
scoreboard players reset @s tip

scoreboard players add @s playerTip 1
execute if score @s playerTip matches 15.. run scoreboard players set @s playerTip 1

#show us a tip!
execute if score @s playerTip matches 1 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.1","with":[{"text":"/trigger exit","color":"aqua"}]}]
execute if score @s playerTip matches 2 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.2"}]
execute if score @s playerTip matches 3 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.3"}]
execute if score @s playerTip matches 4 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.4"}]
execute if score @s playerTip matches 5 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.5","with":[{"keybind":"key.jump","color":"yellow"}]}]
execute if score @s playerTip matches 6 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.6"}]
execute if score @s playerTip matches 7 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.7"}]
execute if score @s playerTip matches 8 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.8","with":[{"keybind":"key.sneak","color":"yellow"}]}]
execute if score @s playerTip matches 9 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.9"}]
execute if score @s playerTip matches 10 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.10"}]
execute if score @s playerTip matches 11 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.11"}]
#
#tip 11 and 12 show at the same time
execute if score @s playerTip matches 12 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.12","with":[{"keybind":"key.drop","color":"yellow"}]}]
execute if score @s playerTip matches 12 run scoreboard players add @s playerTip 1
execute if score @s playerTip matches 13 run tellraw @s ["",{"text":" "},{"translate":"gp.tip.13","with":[{"text":"/trigger bindDropKey","color":"aqua"}]}]
#
execute if score @s playerTip matches 14 run tellraw @s ["",{"text":"[","color":"aqua","bold":true},{"translate":"gp.tip.tip","color":"aqua","bold":true},{"text":"]","color":"aqua","bold":true},{"text":" "},{"translate":"gp.tip.14"}]
