#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#cancel flight if we're in water
execute if score @s fallFlying matches 1 run function phan:bots/movement/cancel_flight

#store y coord because we're gonna need it this time
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10

#override coordinates if we have a temporary target
execute unless score @s botTargetID matches 0 run function phan:bots/movement/override_coordinates_with_temporary_target_xyz

#project the target
scoreboard players set #botAtBottomOfWater value 0
execute unless block ~ ~-0.3 ~ #phan:not_solid run scoreboard players set #botAtBottomOfWater value 1
execute if score #botAtBottomOfWater value matches 0 run function phan:bots/movement/3_in_water/project_target with storage phan:coords
execute if score #botAtBottomOfWater value matches 1 run function phan:bots/movement/0_on_ground/project_target with storage phan:coords


#face the target
execute unless score @s botTempRotTime matches 1.. run function phan:bots/movement/3_in_water/face_target
execute if score @s botTempRotTime matches 1.. run function phan:bots/movement/face_saved_direction

#store the last yaw we looked at
execute store result score @s botWanderYaw run data get entity @s Rotation[0] 1

#find difference between our coordinates and projected target
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_y value run data get entity @s Pos[1] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_x2 value -= #coord_x value
scoreboard players operation #coord_y2 value -= #coord_y value
scoreboard players operation #coord_z2 value -= #coord_z value

#kill projected target
kill 0001e453-0000-0000-0000-000000000001

#reduce speed somewhat when head is above water
execute unless score #botAtBottomOfWater value matches 1 positioned ~ ~1 ~ unless block ~ ~ ~ water unless block ~ ~ ~ #phan:waterloggable[waterlogged=true] unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] unless block ~ ~ ~ #minecraft:coral_plants[waterlogged=true] unless block ~ ~ ~ tall_seagrass run function phan:bots/movement/3_in_water/head_above_water_penalty

#amplify velocity while under speed and slowness effects
function phan:bots/movement/speed_effect_amplifier
execute if score @s botEffectSlowness matches 1.. run function phan:bots/movement/slowness_effect_amplifier

#amplify velocity if rubberbanding
execute unless score @s botRubberbanding matches 0 run function phan:bots/movement/rubber_band_amplifier

#perform a jump?
#execute if score @s botJumpTimer matches 0 run function phan:bots/movement/jump/_jump_index

#velocity index
execute if score @s moveVelocity matches ..39 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.0038"}
execute if score @s moveVelocity matches 40..79 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.004262"}
execute if score @s moveVelocity matches 80..119 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.004723"}
execute if score @s moveVelocity matches 120..159 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.005185"}
execute if score @s moveVelocity matches 160..199 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.005646"}
execute if score @s moveVelocity matches 200..239 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.006108"}
execute if score @s moveVelocity matches 240..279 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.006569"}
#unnatural speeds? whoa!
execute if score @s moveVelocity matches 280..319 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.007031"}
execute if score @s moveVelocity matches 320..359 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.007492"}
execute if score @s moveVelocity matches 360..399 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.007954"}
execute if score @s moveVelocity matches 400..439 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.008415"}
execute if score @s moveVelocity matches 440..579 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.008877"}
execute if score @s moveVelocity matches 480..519 run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.009338"}
execute if score @s moveVelocity matches 520.. run function phan:bots/movement/3_in_water/apply_velocity {arg:"0.0098"}

#jump up and out of water near the edge
execute at @s rotated ~ 0 unless block ^ ^ ^0.5 #phan:not_solid if block ^ ^1 ^0.5 #phan:not_solid if block ^ ^2 ^0.5 #phan:not_solid if block ~ ~2 ~ #phan:not_solid run function phan:bots/movement/3_in_water/consider_jumping_out_of_water