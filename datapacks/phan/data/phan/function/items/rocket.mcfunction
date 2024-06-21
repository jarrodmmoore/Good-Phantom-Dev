#particle
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 unless block ~ ~ ~ water run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 1
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 if block ~ ~ ~ water run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.02 1
execute if entity @s[tag=homing] positioned ^ ^ ^-.5 run particle dust{color:[0.8,0.0,1.0],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.02 1

#count how long we've been alive
scoreboard players add @s age 1

#homing missile faces target if it finds one
execute if entity @s[tag=homing] run function phan:items/rocket_homing_check

#run physics
execute at @s run function phan:items/rocket_physics
execute if entity @s[tag=rocket] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light[waterlogged=true] run function phan:items/rocket_physics

#check for collision with stuff
#don't explode on our owner if we haven't bounced yet
execute if entity @s[tag=rocket] unless score @s editArg1 matches 1.. at @s run function phan:items/rocket_entity_check_ignore_owner
#after first bounce: don't care. hit anything that is hittable
execute if entity @s[tag=rocket] if score @s editArg1 matches 1.. at @s run function phan:items/rocket_entity_check