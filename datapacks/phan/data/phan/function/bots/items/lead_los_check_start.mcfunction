#position ahead must be loaded
execute positioned ^ ^ ^3 unless loaded ~ ~ ~ run return 0
#=====

#project a target
execute at @s run summon marker ^ ^ ^3 {UUID:[I;123987,0,0,3]}
#also known as
#0001e453-0000-0000-0000-000000000003

#see if bot has line of sight to projected target
scoreboard players set #targetExists value 0
execute as 0001e453-0000-0000-0000-000000000003 facing entity @s feet run function phan:bots/items/los_check_start
execute if score #targetExists value matches 1.. run tag @s add viableLeadTarget
execute if score #targetExists value matches 1.. run scoreboard players add #targetLeadExists value 1

#clear target
kill 0001e453-0000-0000-0000-000000000003