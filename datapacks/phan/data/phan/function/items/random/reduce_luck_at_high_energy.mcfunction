#executed by a player when they have 9 energy or more (in race mode only)

#reduce itemLuck based on stockpiled energy, unless the player is significantly far behind

#remove 1 level if 9+ energy (assumed to be true)
execute unless score @s timeBehind1st matches 251.. run scoreboard players remove #itemLuck value 1

#remove more levels at higher energy
execute unless score @s timeBehind1st matches 201.. if score @s energy matches 12.. run scoreboard players remove #itemLuck value 1
execute unless score @s timeBehind1st matches 151.. if score @s energy matches 15.. run scoreboard players remove #itemLuck value 1
execute unless score @s timeBehind1st matches 101.. if score @s energy matches 18.. run scoreboard players remove #itemLuck value 1

#need to clamp in range 1-5
execute if score #itemLuck value matches ..0 run scoreboard players set #itemLuck value 1