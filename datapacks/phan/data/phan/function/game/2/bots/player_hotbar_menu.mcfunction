#add bots?

#SLOT 2 - very easy bot
tag @s[tag=hasSlot2] remove hasSlot2
execute if items entity @s hotbar.2 light_blue_wool[custom_data~{slot2:1b}] run tag @s add hasSlot2
clear @s[gamemode=!creative,tag=!hasSlot2] light_blue_wool[custom_data~{slot2:1b}]
execute if entity @s[tag=!hasSlot2,tag=!noInventory] run item replace entity @s hotbar.2 with light_blue_wool[custom_model_data=1111115,custom_name='["",{"translate":"gp.mode_select.add_bot","color":"white","italic":false,"with":[{"translate":"gp.bot.difficulty.very_easy","color":"blue"}]}]',custom_data={slot2:1b,botmenu:1b}] 1

#SLOT 3 - easy bot
tag @s[tag=hasSlot3] remove hasSlot3
execute if items entity @s hotbar.3 light_blue_wool[custom_data~{slot3:1b}] run tag @s add hasSlot3
clear @s[gamemode=!creative,tag=!hasSlot3] light_blue_wool[custom_data~{slot3:1b}]
execute if entity @s[tag=!hasSlot3,tag=!noInventory] run item replace entity @s hotbar.3 with light_blue_wool[custom_model_data=1111116,custom_name='["",{"translate":"gp.mode_select.add_bot","color":"white","italic":false,"with":[{"translate":"gp.bot.difficulty.easy","color":"aqua"}]}]',custom_data={slot3:1b,botmenu:1b}] 1

#SLOT 4 - normal bot
tag @s[tag=hasSlot4] remove hasSlot4
execute if items entity @s hotbar.4 light_blue_wool[custom_data~{slot4:1b}] run tag @s add hasSlot4
clear @s[gamemode=!creative,tag=!hasSlot4] light_blue_wool[custom_data~{slot4:1b}]
execute if entity @s[tag=!hasSlot4,tag=!noInventory] run item replace entity @s hotbar.4 with light_blue_wool[custom_model_data=1111117,custom_name='["",{"translate":"gp.mode_select.add_bot","color":"white","italic":false,"with":[{"translate":"gp.bot.difficulty.normal","color":"green"}]}]',custom_data={slot4:1b,botmenu:1b}] 1

#SLOT 5 - hard bot
tag @s[tag=hasSlot5] remove hasSlot5
execute if items entity @s hotbar.5 light_blue_wool[custom_data~{slot5:1b}] run tag @s add hasSlot5
clear @s[gamemode=!creative,tag=!hasSlot5] light_blue_wool[custom_data~{slot5:1b}]
execute if entity @s[tag=!hasSlot5,tag=!noInventory] run item replace entity @s hotbar.5 with light_blue_wool[custom_model_data=1111118,custom_name='["",{"translate":"gp.mode_select.add_bot","color":"white","italic":false,"with":[{"translate":"gp.bot.difficulty.hard","color":"#FFAA00"}]}]',custom_data={slot5:1b,botmenu:1b}] 1

#SLOT 6 - tryhard bot
tag @s[tag=hasSlot6] remove hasSlot6
execute if items entity @s hotbar.6 light_blue_wool[custom_data~{slot6:1b}] run tag @s add hasSlot6
clear @s[gamemode=!creative,tag=!hasSlot6] light_blue_wool[custom_data~{slot6:1b}]
execute if entity @s[tag=!hasSlot6,tag=!noInventory] run item replace entity @s hotbar.6 with light_blue_wool[custom_model_data=1111119,custom_name='["",{"translate":"gp.mode_select.add_bot","color":"white","italic":false,"with":[{"translate":"gp.bot.difficulty.tryhard","color":"red"}]}]',custom_data={slot6:1b,botmenu:1b}] 1


#SLOT 7 - delete bot (if any exist)
tag @s[tag=hasSlot7] remove hasSlot7
execute if items entity @s hotbar.7 tnt[custom_data~{slot7:1b}] run tag @s add hasSlot7
execute if score #botCount value matches 1.. run clear @s[gamemode=!creative,tag=!hasSlot7] tnt[custom_data~{slot7:1b}]
execute if score #botCount value matches ..0 run clear @s[gamemode=!creative,tag=hasSlot7] tnt[custom_data~{slot7:1b}]
execute if score #botCount value matches 1.. if entity @s[tag=!hasSlot7,tag=!noInventory] run item replace entity @s hotbar.7 with tnt[custom_name='["",{"translate":"gp.bot.mode_select.remove_bot","color":"red","italic":false}]',custom_data={slot7:1b,botmenu:1b}] 1


#handle input while we're in here
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{botmenu:1b}] run function phan:game/2/bots/player_hotbar_menu_input