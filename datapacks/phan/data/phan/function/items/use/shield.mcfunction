clear @s light_gray_candle[custom_data~{shield:1b}] 1

#set shield timer
scoreboard players set @s shieldTime 165

#feedback
playsound minecraft:block.beacon.activate master @a ~ ~1 ~ 2 1.4
playsound minecraft:item.armor.equip_diamond master @a ~ ~1 ~ 2 1
particle soul_fire_flame ~ ~1 ~ 0.15 0.3 0.15 0.125 20 force

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10