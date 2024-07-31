scoreboard players set #stolenItem value 17
#limit of 1
execute store result score #stealQty value run clear @s firework_rocket[custom_data~{fireworkRocket:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem17 1
execute if score @s botHasItem17 matches ..0 run scoreboard players set @s botHoldingItem 0