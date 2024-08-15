#reconstruct coordinates in x10 form
scoreboard players operation #compare_x value = @s botTempTargetX
scoreboard players operation #compare_x value *= #10 value
scoreboard players operation #compare_x value += @s botTempTargetX10
scoreboard players remove #compare_x value 13

scoreboard players operation #compare_y value = @s botTempTargetY
scoreboard players operation #compare_y value *= #10 value
scoreboard players operation #compare_y value += @s botTempTargetY10
scoreboard players remove #compare_y value 13

scoreboard players operation #compare_z value = @s botTempTargetZ
scoreboard players operation #compare_z value *= #10 value
scoreboard players operation #compare_z value += @s botTempTargetZ10
scoreboard players remove #compare_z value 13

#get difference in coordinates on each axis
scoreboard players operation #testX value = #compare_x value
scoreboard players operation #testX value -= @s location_xx

scoreboard players operation #testY value = #compare_y value
scoreboard players operation #testY value -= @s location_yy

scoreboard players operation #testZ value = #compare_z value
scoreboard players operation #testZ value -= @s location_zz

#stop targeting if we're too far away (more than 10 blocks away)
execute unless score #testX value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute unless score #testY value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute unless score #testZ value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success

#stop targeting if we reached it on x and z
execute if score #testX value matches -15..15 if score #testZ value matches -15..15 run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute if score @s moveVelocity matches 300.. if score #testX value matches -21..21 if score #testZ value matches -21..21 run function phan:bots/movement/check_if_bot_reached_temporary_target_success