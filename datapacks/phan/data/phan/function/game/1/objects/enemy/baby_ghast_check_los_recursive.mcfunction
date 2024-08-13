scoreboard players remove #recursions value 1

execute if entity @s[distance=..2] run scoreboard players set #checkLOS value 1

#keep looking until we hit a block, find a player, or run out of range
execute if score #checkLOS value matches 0 if score #recursions value matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #phan:not_solid run function phan:game/1/objects/enemy/baby_ghast_check_los_recursive