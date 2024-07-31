scoreboard players set #stolenItem value 10
#limit of 1
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{blindingSquid:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem10 1
execute if score @s botHasItem10 matches ..0 run scoreboard players set @s botHoldingItem 0