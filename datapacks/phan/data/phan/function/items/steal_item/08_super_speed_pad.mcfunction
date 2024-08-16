scoreboard players set #stolenItem value 8
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{superSpeedPad:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem8
scoreboard players set @s botHasItem8 0
scoreboard players set @s botHoldingItem 0