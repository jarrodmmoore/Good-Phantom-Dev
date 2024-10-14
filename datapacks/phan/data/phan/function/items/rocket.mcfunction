#particle
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 unless block ~ ~ ~ water run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 1
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 if block ~ ~ ~ water run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.02 1
execute if entity @s[tag=homing] positioned ^ ^ ^-.5 run particle dust{color:[0.8,0.0,1.0],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.02 1

#count how long we've been alive
scoreboard players add @s age 1

#homing missile faces target if it finds one
execute if entity @s[tag=homing] run function phan:items/rocket_homing_check

#run physics. twice.
execute at @s run function phan:items/rocket_physics
execute if entity @s[tag=rocket] at @s run function phan:items/rocket_physics
#Q: why do physics twice per tick?
#A: rockets travel more than 1 meter per tick, and we can't do true raycasting to reliably check collisions at high speeds. so we need to split into steps that each travel less than 1m.

#the second physics tick used to be skipped while underwater, but i ended up removing this.
#rockets moving slower while underwater was nice attention to detail, but it made hitting things underwater nearly impossible.
#additionally: TNT physics (handled by minecraft) are unaffected by water, so slowing rockets down underwater would be inconsistent.

#TNT not being slower in water is inconsistent with other entities in minecraft, but whatever, that's not our problem.

#check for collision with stuff
#don't explode on our owner if we haven't bounced yet
execute if entity @s[tag=rocket] unless score @s editArg1 matches 1.. at @s run function phan:items/rocket_entity_check_ignore_owner
#after first bounce: don't care. hit anything that is hittable
execute if entity @s[tag=rocket] if score @s editArg1 matches 1.. at @s run function phan:items/rocket_entity_check