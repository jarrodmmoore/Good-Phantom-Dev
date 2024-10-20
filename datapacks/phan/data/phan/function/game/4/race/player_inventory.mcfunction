#SLOT 0 - boost item
tag @s[tag=hasSlot0a] remove hasSlot0a
tag @s[tag=hasSlot0b] remove hasSlot0b
execute if items entity @s hotbar.0 light_blue_dye[custom_data~{slot0:1b,nocooldown:1b}] run tag @s add hasSlot0a
execute if items entity @s hotbar.0 light_blue_dye[custom_data~{slot0:1b,cooldown:1b}] run tag @s add hasSlot0b
clear @s[gamemode=!creative,tag=!hasSlot0a,tag=!hasSlot0b] light_blue_dye[custom_data~{slot0:1b}]
execute if entity @s[tag=!hasSlot0a,tag=!noInventory] if entity @s[scores={energy=3..,fallFlying=..0,inputCooldownD=..0}] run item replace entity @s hotbar.0 with minecraft:light_blue_dye[custom_model_data=1111115,custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.boost","color":"aqua","italic":false}]',custom_data={slot0:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot0b,tag=!noInventory] unless entity @s[scores={energy=3..,fallFlying=..0,inputCooldownD=..0}] run item replace entity @s hotbar.0 with minecraft:light_blue_dye[custom_model_data=1111118,custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.boost","color":"gray","italic":false}]',custom_data={slot0:1b,rmb:1b,cooldown:1b}] 1

#SLOT 8 - respawn
tag @s[tag=hasSlot8a] remove hasSlot8a
tag @s[tag=hasSlot8b] remove hasSlot8b
execute if items entity @s hotbar.8 light_blue_dye[custom_data~{slot8:1b,nocooldown:1b}] run tag @s add hasSlot8a
execute if items entity @s hotbar.8 light_blue_dye[custom_data~{slot8:1b,cooldown:1b}] run tag @s add hasSlot8b
clear @s[gamemode=!creative,tag=!hasSlot8a,tag=!hasSlot8b] light_blue_dye[custom_data~{slot8:1b}]
execute if entity @s[tag=!hasSlot8a,tag=!noInventory] if entity @s[scores={inputCooldownB=..0}] run item replace entity @s hotbar.8 with minecraft:light_blue_dye[custom_model_data=1111120,custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.respawn","color":"red","italic":false}]',custom_data={slot8:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot8b,tag=!noInventory] unless entity @s[scores={inputCooldownB=..0}] run item replace entity @s hotbar.8 with minecraft:light_blue_dye[custom_model_data=1111121,custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.respawn","color":"gray","italic":false}]',custom_data={slot8:1b,rmb:1b,cooldown:1b}] 1

#any slot -- feather (if assist mode enabled it)
execute if score #assist_movement value matches 2.. run function phan:game/1/player/inventory_feather