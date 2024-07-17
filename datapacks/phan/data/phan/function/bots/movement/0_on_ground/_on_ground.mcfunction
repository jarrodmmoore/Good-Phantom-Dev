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

#=====
#ain't get no velocity if we're not moving
execute if score #botWantsToMove value matches 0 run return 0

#velocity index
scoreboard players add @s moveVelocity 0
execute if score @s moveVelocity matches ..39 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 40..79 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 80..119 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 120..159 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 160..199 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 200..239 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 240..279 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
#unnatural speeds? whoa!
execute if score @s moveVelocity matches 280..319 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 320..359 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 360..399 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 400..439 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 440..579 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 480..519 run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}
execute if score @s moveVelocity matches 520.. run function phan:bots/movement/0_on_ground/apply_velocity {arg:"0.0070"}