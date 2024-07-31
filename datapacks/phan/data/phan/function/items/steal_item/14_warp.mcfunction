scoreboard players set #stolenItem value 14
#limit of 1
execute store result score #stealQty value run clear @s lime_candle[custom_data~{warp:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem14 1
execute if score @s botHasItem14 matches ..0 run scoreboard players set @s botHoldingItem 0