scoreboard players set #stolenItem value 7
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{speedPad:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem7
scoreboard players set @s botHasItem7 0
scoreboard players set @s botHoldingItem 0