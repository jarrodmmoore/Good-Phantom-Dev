#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#store y coord because we're gonna need it this time
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10

#face the target
function phan:bots/movement/2_gliding/face_target with storage phan:coords