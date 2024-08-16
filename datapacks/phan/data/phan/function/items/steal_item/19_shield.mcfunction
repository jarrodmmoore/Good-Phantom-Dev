scoreboard players set #stolenItem value 19
#limit of 1
execute store result score #stealQty value run clear @s light_gray_candle[custom_data~{shield:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem19 1
execute if score @s botHasItem19 matches ..0 run scoreboard players set @s botHoldingItem 0