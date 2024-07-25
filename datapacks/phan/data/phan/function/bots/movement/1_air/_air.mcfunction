#exit out if we want to transition to flight
execute if entity @s[tag=botFlyWhenInAir,scores={airTime=12..}] run return run function phan:bots/movement/1_air/transition_to_gliding_wait
execute if score @s fallFlying matches 1 run return 0

#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#override coordinates if we have a temporary target
execute unless score @s botTargetID matches 0 run function phan:bots/movement/override_coordinates_with_temporary_target_xz

#project the target
function phan:bots/movement/0_on_ground/project_target with storage phan:coords

#face the target (jk, don't do that while airborne. super broken.)
#function phan:bots/movement/0_on_ground/face_target

#find difference between our coordinates and projected target
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_x2 value -= #coord_x value
scoreboard players operation #coord_z2 value -= #coord_z value

#kill projected target
kill 0001e453-0000-0000-0000-000000000001

#perform a coyote jump?
execute if entity @s[scores={botJumpTimer=-1,airTime=..10}] run function phan:bots/movement/jump/check_for_ledge_coyote

#instead of setting velocity directly, let's try adding to it to mimic minecraft air acceleration
#(note: lower scale on the data get Motion[X] means bot will have higher air mobility)
#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_x2 value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
execute store result score #test2 value run data get entity @s Motion[2] 2500
scoreboard players operation #test2 value += #coord_z2 value
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test2 value