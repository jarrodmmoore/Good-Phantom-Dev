#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#project the target
function phan:bots/movement/0_on_ground/project_target with storage phan:coords

#face the target
function phan:bots/movement/0_on_ground/face_target with storage phan:coords

#find difference between our coordinates and projected target
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_x2 value -= #coord_x value
scoreboard players operation #coord_z2 value -= #coord_z value

#kill projected target
kill 0001e453-0000-0000-0000-000000000001

#amplify velocity depending on effects and terrain
execute positioned ~ ~-1 ~ if block ~ ~ ~ #phan:bot_odd_terrain run function phan:bots/movement/0_on_ground/odd_terrain
execute if block ~ ~ ~ #phan:bot_odd_terrain run function phan:bots/movement/0_on_ground/odd_terrain

#amplify velocity while under speed and slowness effects
function phan:bots/movement/speed_effect_amplifier
execute if score @s botEffectSlowness matches 1.. run function phan:bots/movement/slowness_effect_amplifier

#perform a jump?
execute if score @s botJumpTimer matches -1 run function phan:bots/movement/jump/check_for_ledge
execute if score @s botJumpTimer matches 0 run function phan:bots/movement/jump/_jump_index

#velocity index
execute if score @s moveVelocity matches ..39 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.00422"}
execute if score @s moveVelocity matches 40..79 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.004781"}
execute if score @s moveVelocity matches 80..119 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.005342"}
execute if score @s moveVelocity matches 120..159 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.005902"}
execute if score @s moveVelocity matches 160..199 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.006463"}
execute if score @s moveVelocity matches 200..239 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.007024"}
execute if score @s moveVelocity matches 240..279 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.007585"}
#unnatural speeds? whoa!
execute if score @s moveVelocity matches 280..319 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.008145"}
execute if score @s moveVelocity matches 320..359 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.008706"}
execute if score @s moveVelocity matches 360..399 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.009267"}
execute if score @s moveVelocity matches 400..439 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.009828"}
execute if score @s moveVelocity matches 440..579 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.010388"}
execute if score @s moveVelocity matches 480..519 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.010949"}
execute if score @s moveVelocity matches 520.. run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.01151"}