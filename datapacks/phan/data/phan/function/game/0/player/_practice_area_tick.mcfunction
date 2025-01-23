#executed by a player

#need to run logic in practice area!
scoreboard players set #practiceLogic value 1



#! emergency exit this function right before the inventory stuff in case gameState changed
execute unless score #gameState value matches 0 run return 0

#inventory
effect give @s minecraft:strength 5 5 true
#effect give @s[scores={strengthTime=101..}] minecraft:strength 5 8 false
execute unless score @s strengthTime matches 1.. if entity @s[gamemode=adventure] run function phan:game/1/player/inventory
execute if score @s strengthTime matches 1.. if entity @s[gamemode=adventure] run function phan:game/1/player/inventory_powered_up

#SLOT 8 - respawn
tag @s[tag=hasSlot8a] remove hasSlot8a
tag @s[tag=hasSlot8b] remove hasSlot8b
execute if items entity @s hotbar.8 light_blue_dye[custom_data~{slot8:1b,nocooldown:1b}] run tag @s add hasSlot8a
execute if items entity @s hotbar.8 light_blue_dye[custom_data~{slot8:1b,cooldown:1b}] run tag @s add hasSlot8b
clear @s[gamemode=!creative,tag=!hasSlot8a,tag=!hasSlot8b] light_blue_dye[custom_data~{slot8:1b}]
execute if entity @s[tag=!hasSlot8a,tag=!noInventory] if entity @s[scores={inputCooldown=..0}] run item replace entity @s hotbar.8 with minecraft:light_blue_dye[item_model="gp/item/respawn_item",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.practice.return_to_cabin","color":"red","italic":false}]',custom_data={slot8:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot8b,tag=!noInventory] unless entity @s[scores={inputCooldown=..0}] run item replace entity @s hotbar.8 with minecraft:light_blue_dye[item_model="gp/item/respawn_item_cooldown",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.practice.return_to_cabin","color":"gray","italic":false}]',custom_data={slot8:1b,rmb:1b,cooldown:1b}] 1

#enter practice course?
execute at @s[x=829,y=31,z=-1007,distance=..10] if block ~ ~-.1 ~ red_glazed_terracotta run function phan:game/0/player/teleport_pad

#respawn if we're in placed we shouldn't be
execute if score #playerInLobby value matches 2 if entity @s[scores={location_x=500..1500,location_z=-1500..-750}] run function phan:game/0/player/practice_respawn_logic

#handle respawn trigger
execute if score @s respawn matches 1.. run function phan:game/0/player/handle_respawn_trigger

#do extra stuff when in the practice course
execute if entity @s[tag=practiceCourse] at @s run function phan:game/0/player/practice_course_loop

#use item?
execute if entity @s[scores={carrotInput=1..,strengthTime=..0}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/1/player/item/_index
execute if entity @s[scores={carrotInput=1..,strengthTime=1..}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/1/player/item/_index_strength
execute if score @s strengthTime matches ..0 run function phan:game/1/player/item/_index_buffer_inputs
execute if score @s strengthTime matches 1.. run function phan:game/1/player/item/_index_strength_buffer_inputs
execute if score @s carrotInput matches 1.. if score @s inputCooldown matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot8:1b}] in overworld run function phan:game/0/player/portal_to_lobby


#set score digits
function phan:game/1/set_score_digits
#sync pearls needed with global one for the practice course
scoreboard players operation @s pPearlsNeeded = #practicePearlsNeeded value


#go back to lobby through portal
execute if entity @s[x=862,y=31,z=-1056,dx=5,dy=6,dz=4] run function phan:game/0/player/portal_to_lobby