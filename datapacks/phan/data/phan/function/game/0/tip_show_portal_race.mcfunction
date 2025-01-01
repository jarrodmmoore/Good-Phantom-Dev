#do again in some amount of time
scoreboard players set @s playerTipTime -200
scoreboard players reset @s tip

#stop showing tips during load screens once we've seen them all
execute if score @s playerTip matches 15.. run tag @s add stopShowingTipsPR

#count up
scoreboard players add @s playerTip 1
execute if score @s playerTip matches 15.. run scoreboard players set @s playerTip 1

#show us a tip!
execute if score @s playerTip matches 1 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip.1","with":[{"text":"/trigger exit","color":"aqua"}]}]
execute if score @s playerTip matches 2 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.1","with":[{"translate":"gp.mode_select.versus","color":"light_purple"}]}]
execute if score @s playerTip matches 3 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.2","with":[{"translate":"gp.item.sonic_blast","color":"light_purple"}]}]
execute if score @s playerTip matches 4 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.3","with":[{"translate":"gp.item.speed_pad","color":"light_purple"}]}]
execute if score @s playerTip matches 5 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip.5","with":[{"keybind":"key.jump","color":"yellow"}]}]
execute if score @s playerTip matches 6 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.4"}]
execute if score @s playerTip matches 7 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.5","with":[{"translate":"gp.item.lightning_strike","color":"light_purple"}]}]
execute if score @s playerTip matches 8 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip.8","with":[{"keybind":"key.sneak","color":"yellow"}]}]
execute if score @s playerTip matches 9 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.6","with":[{"translate":"gp.item.shield","color":"light_purple"}]}]
execute if score @s playerTip matches 10 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.7","with":[{"translate":"gp.item.enderman_thief","color":"light_purple"}]}]
execute if score @s playerTip matches 11 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.8","with":[{"translate":"gp.item.anvil_of_justice","color":"light_purple"}]}]
execute if score @s playerTip matches 12 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.9","with":[{"translate":"gp.mode_select.versus","color":"light_purple"}]}]
execute if score @s playerTip matches 13 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.10","with":[{"translate":"gp.item.ender_pearl","color":"light_purple"}]}]
execute if score @s playerTip matches 14 run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"translate":"gp.tip.tip","color":"light_purple","bold":true},{"text":"]","color":"light_purple","bold":true},{"text":" "},{"translate":"gp.tip_race.11","with":[{"translate":"gp.mode_select.versus","color":"light_purple"}]}]
