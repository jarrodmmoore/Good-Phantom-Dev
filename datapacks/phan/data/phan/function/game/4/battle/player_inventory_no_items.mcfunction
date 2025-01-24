#SLOT 2 - light projectile
tag @s[tag=hasSlot1a] remove hasSlot1a
tag @s[tag=hasSlot1b] remove hasSlot1b
execute if items entity @s hotbar.1 light_blue_dye[custom_data~{slot1:1b,nocooldown:1b}] run tag @s add hasSlot1a
execute if items entity @s hotbar.1 light_blue_dye[custom_data~{slot1:1b,cooldown:1b}] run tag @s add hasSlot1b
clear @s[gamemode=!creative,tag=!hasSlot1a,tag=!hasSlot1b] light_blue_dye[custom_data~{slot1:1b}]
execute if entity @s[tag=!hasSlot1a,tag=!noInventory] if entity @s[scores={energy=2..,inputCooldownB=..0}] run item replace entity @s hotbar.1 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_light",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.light_projectile","color":"aqua","italic":false}]',custom_data={slot1:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot1b,tag=!noInventory] unless entity @s[scores={energy=2..,inputCooldownB=..0}] run item replace entity @s hotbar.1 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_light",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.light_projectile","color":"gray","italic":false}]',custom_data={slot1:1b,rmb:1b,cooldown:1b}] 1

#any slot -- feather (if assist mode enabled it)
execute if score #assist_movement value matches 2.. run function phan:game/1/player/inventory_feather