#executed by a player when they have 9 energy or more (in race mode only)

#remove 1 level if 9+ energy (assumed to be true)
scoreboard players remove #itemLuck value 1

#remove more levels at higher energy
execute if score @s energy matches 12.. run scoreboard players remove #itemLuck value 1
execute if score @s energy matches 15.. run scoreboard players remove #itemLuck value 1
execute if score @s energy matches 18.. run scoreboard players remove #itemLuck value 1

#need to clamp in range 1-5
execute if score #itemLuck value matches ..0 run scoreboard players set #itemLuck value 1