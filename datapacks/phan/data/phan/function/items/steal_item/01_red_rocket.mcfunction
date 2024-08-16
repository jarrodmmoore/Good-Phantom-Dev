scoreboard players set #stolenItem value 1
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{redRocket:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem1
scoreboard players set @s botHasItem1 0
scoreboard players set @s botHoldingItem 0