#put coordinates in storage
execute store result storage phan:coords target_x int 1 run scoreboard players get @s botTargetX
execute store result storage phan:coords target_x_dec int 1 run scoreboard players get @s botTargetX10
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10
execute store result storage phan:coords target_z int 1 run scoreboard players get @s botTargetZ
execute store result storage phan:coords target_z_dec int 1 run scoreboard players get @s botTargetZ10

#store rotation as well
execute store result storage phan:coords yaw_offset int 1 run scoreboard players get @s botHookBase

#moveState
#0 = on ground
#1 = airborne
#2 = gliding
#3 = in water
execute store result score #moveState value run execute if score @s onGround matches 0
execute if score @s fallFlying matches 1 run scoreboard players set #moveState value 2
execute if score @s inWater matches 1 run scoreboard players set #moveState value 3

#execute movements
execute if score #moveState value matches 0 run function phan:bots/movement/0_on_ground/_on_ground
