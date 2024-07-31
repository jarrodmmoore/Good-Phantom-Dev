scoreboard players set #stolenItem value 18
execute store result score #stealQty value run clear @s red_wool[custom_data~{trappedChest:1b}]

execute if entity @s[tag=!ai] run return 0

scoreboard players operation #stealQty value = @s botHasItem18
scoreboard players set @s botHasItem18 0
scoreboard players set @s botHoldingItem 0