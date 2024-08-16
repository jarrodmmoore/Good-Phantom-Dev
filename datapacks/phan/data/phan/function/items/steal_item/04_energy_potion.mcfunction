scoreboard players set #stolenItem value 4
#limit of 1
execute store result score #stealQty value run clear @s amethyst_shard[custom_data~{energyPotion:1b}] 1

execute if entity @s[tag=!ai] run return 0

scoreboard players set #stealQty value 1
scoreboard players remove @s botHasItem4 1
execute if score @s botHasItem4 matches ..0 run scoreboard players set @s botHoldingItem 0