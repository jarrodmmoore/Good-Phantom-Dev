scoreboard players remove #recursions value 1

#quit out if we can see the target
execute if entity @s[distance=..1] run return run function phan:bots/items/los_check_success

#keep checking forward
execute if score #recursions value matches 1.. positioned ^ ^ ^.9 if block ~ ~1.5 ~ #phan:not_solid run function phan:bots/items/los_check_recursive