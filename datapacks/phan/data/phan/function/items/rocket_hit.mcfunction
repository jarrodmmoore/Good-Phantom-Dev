#are we near something that's hittable? always explode instead of bouncing
execute if entity @e[tag=tntCanHit,distance=..3] run scoreboard players set #hit value 1

#1=explode
#2=fizzle
execute if score #hit value matches ..2 run function phan:items/rocket_explode
#3=bounce
execute if score #hit value matches 3 run function phan:items/rocket_check/possible_reflect_x