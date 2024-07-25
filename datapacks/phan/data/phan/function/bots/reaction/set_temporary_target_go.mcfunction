scoreboard players add #editArg1 value 10
scoreboard players add #editArg2 value 10
scoreboard players add #editArg3 value 10

scoreboard players operation @s botTempTargetX = #editArg1 value
scoreboard players operation @s botTempTargetX /= #10 value
scoreboard players operation @s botTempTargetX10 = #editArg1 value
scoreboard players operation @s botTempTargetX10 %= #10 value

scoreboard players operation @s botTempTargetY = #editArg2 value
scoreboard players operation @s botTempTargetY /= #10 value
scoreboard players operation @s botTempTargetY10 = #editArg2 value
scoreboard players operation @s botTempTargetY10 %= #10 value

scoreboard players operation @s botTempTargetZ = #editArg3 value
scoreboard players operation @s botTempTargetZ /= #10 value
scoreboard players operation @s botTempTargetZ10 = #editArg3 value
scoreboard players operation @s botTempTargetZ10 %= #10 value

scoreboard players operation @s botTargetID = #botTargetID value

#small grace period where we're allowed to not make progress
scoreboard players set @s botTimeSinceProgress -15