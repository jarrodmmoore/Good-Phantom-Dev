#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#open our wings to pretend like we're flying
data merge entity @s {FallFlying:1b}

#store y coord because we're gonna need it this time
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10

#are we in improvised flight mode? target a potentially higher y coordinate
execute if entity @s[tag=botImprovFlight] run function phan:bots/movement/2_gliding/use_improvised_y_coordinate

#vehicle must face target and also not be in an invalid place
scoreboard players set #success value 0
execute on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] at @s run function phan:bots/movement/2_gliding/manage_vehicle

#bot: face the target
function phan:bots/movement/2_gliding/face_target with storage phan:coords

#store the last yaw we looked at
execute store result score @s botWanderYaw run data get entity @s Rotation[0] 1

#cancel flight if that's what we wanted
execute if score #success value matches 0 run function phan:bots/movement/cancel_flight