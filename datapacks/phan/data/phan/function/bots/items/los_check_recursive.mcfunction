scoreboard players remove #recursions value 1

#DEBUG: show line
#particle end_rod ~ ~ ~ 0 0 0 0 1 force

#quit out if we can see the target
execute if entity @s[distance=..1] run return run function phan:bots/items/los_check_success

#keep checking forward
execute if score #recursions value matches 1.. positioned ^ ^ ^.9 if block ~ ~1.5 ~ #phan:not_solid run function phan:bots/items/los_check_recursive