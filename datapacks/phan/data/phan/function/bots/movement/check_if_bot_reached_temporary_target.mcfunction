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


#now check if we meet the criteria for reaching the temp target

#regular (priority 0) temp target
execute unless score @s botTargetPriority matches 1..99 run function phan:bots/movement/check_if_bot_reached_temporary_target_0

#priority target (battle mode)
execute if score @s botTargetPriority matches 1..99 run function phan:bots/movement/check_if_bot_reached_temporary_target_priority