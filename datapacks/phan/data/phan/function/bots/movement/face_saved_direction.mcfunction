execute store result storage phan:coords coord_yaw int 1 run scoreboard players get @s botTempRotYaw
execute store result storage phan:coords coord_pitch int 1 run scoreboard players get @s botTempRotPitch
execute unless function phan:bots/movement/check_for_vehicle run function phan:bots/movement/face_saved_direction_macro with storage phan:coords