#this is run globally

#some stuff we only want to do when a player is currently in the practice area...
execute if score #practiceLogic value matches 1 run function phan:game/0/practice/_practice_main_active

#enemies spawned with the "act2Spawn" tag have no AI and won't attack.
execute as @e[tag=representBaddy,tag=act2Spawn,tag=!declawed] run function phan:game/0/practice/declaw_enemy


#check for targets getting shot
execute if block 829 38 -1030 melon run function phan:game/0/practice/practice_course_door_up
execute if block 829 38 -1030 target run function phan:game/0/practice/practice_course_door_down
execute if block 838 36 -1102 melon run function phan:game/0/practice/practice_shooting_range_activate


#interpolation effect on player soul after images
execute as @e[tag=soulNeedsInterp,type=area_effect_cloud] at @s run function phan:game/1/player_soul_visuals_interp

#objects do their thing
execute as @e[tag=checkValid] at @s run function phan:game/1/objects/_index

#all arrows we shoot should cause the timer to go down
execute as @e[type=arrow,tag=!arrowMarked] run function phan:game/1/objects/enemy/skeleton_mark_arrow
execute as @e[type=arrow,tag=hurtfulArrow] at @s run function phan:game/1/objects/enemy/hurtful_arrow

#clear damage since we've already processed it
scoreboard players reset @a[scores={damage=1..}] damage

#projectiles do stuff
execute as @e[tag=projectile,type=armor_stand] at @s run function phan:game/1/projectile/_index
