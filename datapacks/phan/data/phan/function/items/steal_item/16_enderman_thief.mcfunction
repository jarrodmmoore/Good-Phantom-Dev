scoreboard players set #stolenItem value 16
#limit of 1
execute store result score #stealQty value run clear @s cyan_dye[custom_data~{endermanThief:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem16 1
execute if score @s botHasItem16 matches ..0 run scoreboard players set @s botHoldingItem 0