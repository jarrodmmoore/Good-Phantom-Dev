#SLOT 0 - bite item
tag @s[tag=hasSlot0] remove hasSlot0
execute if items entity @s hotbar.0 diamond_sword[custom_data~{slot0:1b}] run tag @s add hasSlot0
clear @s[gamemode=!creative,tag=!hasSlot0] diamond_sword[custom_data~{slot0:1b}]
execute if entity @s[tag=!hasSlot0,tag=!noInventory] run item replace entity @s hotbar.0 with minecraft:diamond_sword[unbreakable={show_in_tooltip:0b},item_model="gp/item/bite_item",enchantments={levels:{"minecraft:sharpness":20,"minecraft:knockback":3},show_in_tooltip:0b},custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.bite","color":"aqua","italic":false}]',attribute_modifiers={modifiers:[{id:"fastbite",operation:"add_value",type:"attack_speed",amount:0,slot:"mainhand"}],show_in_tooltip:0b},hide_additional_tooltip={},custom_data={slot0:1b,rmb:1b}] 1

#SLOT 1 - boost item
tag @s[tag=hasSlot1a] remove hasSlot1a
tag @s[tag=hasSlot1b] remove hasSlot1b
execute if items entity @s hotbar.1 light_blue_dye[custom_data~{slot1:1b,nocooldown:1b}] run tag @s add hasSlot1a
execute if items entity @s hotbar.1 light_blue_dye[custom_data~{slot1:1b,cooldown:1b}] run tag @s add hasSlot1b
clear @s[gamemode=!creative,tag=!hasSlot1a,tag=!hasSlot1b] light_blue_dye[custom_data~{slot1:1b}]
execute if entity @s[tag=!hasSlot1a,tag=!noInventory] if entity @s[scores={energy=3..,fallFlying=..0,inputCooldownD=..0}] run item replace entity @s hotbar.1 with minecraft:light_blue_dye[item_model="gp/item/boost_item",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.boost","color":"aqua","italic":false}]',custom_data={slot1:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot1b,tag=!noInventory] unless entity @s[scores={energy=3..,fallFlying=..0,inputCooldownD=..0}] run item replace entity @s hotbar.1 with minecraft:light_blue_dye[item_model="gp/item/boost_item_cooldown",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.boost","color":"gray","italic":false}]',custom_data={slot1:1b,rmb:1b,cooldown:1b}] 1

#SLOT 2 - projectile
tag @s[tag=hasSlot2a] remove hasSlot2a
tag @s[tag=hasSlot2b] remove hasSlot2b
execute if items entity @s hotbar.2 light_blue_dye[custom_data~{slot2:1b,nocooldown:1b}] run tag @s add hasSlot2a
execute if items entity @s hotbar.2 light_blue_dye[custom_data~{slot2:1b,cooldown:1b}] run tag @s add hasSlot2b
clear @s[gamemode=!creative,tag=!hasSlot2a,tag=!hasSlot2b] light_blue_dye[custom_data~{slot2:1b}]
execute if entity @s[tag=!hasSlot2a,tag=!noInventory] if entity @s[scores={energy=1..,inputCooldownB=..0}] run item replace entity @s hotbar.2 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_light",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.light_projectile","color":"aqua","italic":false}]',custom_data={slot2:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot2b,tag=!noInventory] unless entity @s[scores={energy=1..,inputCooldownB=..0}] run item replace entity @s hotbar.2 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_light_cooldown",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.light_projectile","color":"gray","italic":false}]',custom_data={slot2:1b,rmb:1b,cooldown:1b}] 1

#SLOT 2 - heavy projectile
tag @s[tag=hasSlot3a] remove hasSlot3a
tag @s[tag=hasSlot3b] remove hasSlot3b
execute if items entity @s hotbar.3 light_blue_dye[custom_data~{slot3:1b,nocooldown:1b}] run tag @s add hasSlot3a
execute if items entity @s hotbar.3 light_blue_dye[custom_data~{slot3:1b,cooldown:1b}] run tag @s add hasSlot3b
clear @s[gamemode=!creative,tag=!hasSlot3a,tag=!hasSlot3b] light_blue_dye[custom_data~{slot3:1b}]
execute if entity @s[tag=!hasSlot3a,tag=!noInventory] if entity @s[scores={energy=2..,inputCooldownB=..0}] run item replace entity @s hotbar.3 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_heavy",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.heavy_projectile","color":"aqua","italic":false}]',custom_data={slot3:1b,rmb:1b,nocooldown:1b}] 1
execute if entity @s[tag=!hasSlot3b,tag=!noInventory] unless entity @s[scores={energy=2..,inputCooldownB=..0}] run item replace entity @s hotbar.3 with minecraft:light_blue_dye[item_model="gp/item_entity/projectile_heavy_cooldown",custom_name='["",{"keybind":"key.use","color":"white","italic":false},{"text":" "},{"translate":"gp.game.heavy_projectile","color":"gray","italic":false}]',custom_data={slot3:1b,rmb:1b,cooldown:1b}] 1

#any slot -- ender eyes
execute store result score #test value run clear @s flint[custom_data~{enderEyeInv:1b}] 0
execute unless score #test value = @s enderEyes run function phan:game/1/player/inventory_0

#any slot -- feather (if assist mode enabled it)
execute if score #assist_movement value matches 2.. run function phan:game/1/player/inventory_feather