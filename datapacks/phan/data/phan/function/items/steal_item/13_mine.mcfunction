scoreboard players set #stolenItem value 13
execute store result score #stealQty value run clear @s red_wool[custom_data~{mineItem:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem13
scoreboard players set @s botHasItem13 0
scoreboard players set @s botHoldingItem 0