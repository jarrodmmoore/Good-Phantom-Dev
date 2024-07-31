scoreboard players set #stolenItem value 2
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{homingRocket:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem2
scoreboard players set @s botHasItem2 0
scoreboard players set @s botHoldingItem 0