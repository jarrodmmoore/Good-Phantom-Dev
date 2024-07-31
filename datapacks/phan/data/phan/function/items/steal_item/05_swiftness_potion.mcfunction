scoreboard players set #stolenItem value 5
#limit of 1
execute store result score #stealQty value run clear @s prismarine_shard[custom_data~{swiftnessPotion:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem5 1
execute if score @s botHasItem5 matches ..0 run scoreboard players set @s botHoldingItem 0