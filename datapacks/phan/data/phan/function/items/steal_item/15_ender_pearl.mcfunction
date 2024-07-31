scoreboard players set #stolenItem value 15
execute store result score #stealQty value run clear @s ender_pearl[custom_data~{enderPearl:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem15
scoreboard players set @s botHasItem15 0
scoreboard players set @s botHoldingItem 0