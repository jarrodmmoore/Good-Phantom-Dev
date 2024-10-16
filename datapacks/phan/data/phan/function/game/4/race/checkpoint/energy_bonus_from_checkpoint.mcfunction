#don't give anything unless items are disabled OR item catch-up is disabled
execute if score #assist_items value matches 0 if score #assist_catch_up value matches 0 run return 0
#reason: items are already rubber-banded with how they benefit players who are behind.
#stacking 2 types of rubber-banding like this makes it very easy to exploit the system for free wins

#=====

#players further behind get free energy
execute if score @s timeBehind1st matches 90..149 run scoreboard players add @s energy 1
execute if score @s timeBehind1st matches 150..209 run scoreboard players add @s energy 2
execute if score @s timeBehind1st matches 210.. run scoreboard players add @s energy 3
execute if score @s energy matches 19..99 run scoreboard players set @s energy 18