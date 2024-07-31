#update held item (this is purely cosmetic)
execute if score @s botHoldingItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s botHoldingItem matches 1 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111111]
execute if score @s botHoldingItem matches 2 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111112]
execute if score @s botHoldingItem matches 3 run item replace entity @s weapon.mainhand with tnt
execute if score @s botHoldingItem matches 4 run item replace entity @s weapon.mainhand with amethyst_shard
execute if score @s botHoldingItem matches 5 run item replace entity @s weapon.mainhand with prismarine_shard
execute if score @s botHoldingItem matches 6 run item replace entity @s weapon.mainhand with prismarine_crystals
execute if score @s botHoldingItem matches 7 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111113]
execute if score @s botHoldingItem matches 8 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111114]
execute if score @s botHoldingItem matches 9 run item replace entity @s weapon.mainhand with blaze_rod
execute if score @s botHoldingItem matches 10 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111115]
execute if score @s botHoldingItem matches 11 run item replace entity @s weapon.mainhand with anvil
execute if score @s botHoldingItem matches 12 run item replace entity @s weapon.mainhand with quartz
execute if score @s botHoldingItem matches 13 unless score #brightMines value matches 1 run item replace entity @s weapon.mainhand with minecraft:red_wool[custom_model_data=1111141]
execute if score @s botHoldingItem matches 13 if score #brightMines value matches 1 run item replace entity @s weapon.mainhand with minecraft:red_wool[custom_model_data=1111149]
execute if score @s botHoldingItem matches 14 run item replace entity @s weapon.mainhand with lime_candle
execute if score @s botHoldingItem matches 15 run item replace entity @s weapon.mainhand with ender_pearl
execute if score @s botHoldingItem matches 16 run item replace entity @s weapon.mainhand with cyan_dye[custom_model_data=1111116]
execute if score @s botHoldingItem matches 17 run item replace entity @s weapon.mainhand with firework_rocket
execute if score @s botHoldingItem matches 18 run item replace entity @s weapon.mainhand with red_wool[custom_model_data=1111150]
execute if score @s botHoldingItem matches 19 run item replace entity @s weapon.mainhand with light_gray_candle

#remember the last item we held
scoreboard players operation @s botHoldingItemPrev = @s botHoldingItem