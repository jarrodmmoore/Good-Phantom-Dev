#we're going to project a target and then move towards it
#(this is an extremely lightweight version of what the AIs in Sprint Racer do)
scoreboard players set #test value 0
execute if entity @s[tag=!declawed] as @a[limit=1,tag=playing,gamemode=adventure,sort=nearest] at @s run function phan:game/1/objects/enemy/vindicator_project_target

#move!
execute if score #test value matches 1 if score #assist_enemies value matches 0 run function phan:game/1/objects/enemy/move_towards_point
execute if score #test value matches 1 if score #assist_enemies value matches 1.. run function phan:game/1/objects/enemy/move_towards_point_slow

#hit nearby players
scoreboard players set #test2 value 0
execute if score #assist_enemies value matches 0 if entity @s[tag=!declawed] positioned ~-.5 ~-1.1 ~-.5 as @a[tag=playing,gamemode=adventure,dx=1,dy=3,dz=1] positioned ~.5 ~1.1 ~.5 run function phan:game/1/objects/enemy/vindicator_hit
execute if score #test2 value matches 1 run function phan:game/1/objects/enemy/vindicator_lose_ai

#clean-up
execute if score #test value matches 1 run kill 0000007b-0000-00a0-0000-000a0000003c