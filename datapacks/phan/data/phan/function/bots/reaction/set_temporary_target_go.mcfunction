scoreboard players operation @s botTempTargetX = #editArg1 value
scoreboard players operation @s botTempTargetX /= #10 value
scoreboard players operation @s botTempTargetX10 = #editArg1 value
execute if score #editArg1 value matches ..-1 run scoreboard players operation @s botTempTargetX10 *= #-1 value
scoreboard players operation @s botTempTargetX10 %= #10 value

scoreboard players operation @s botTempTargetY = #editArg2 value
scoreboard players operation @s botTempTargetY /= #10 value
scoreboard players operation @s botTempTargetY10 = #editArg2 value
execute if score #editArg2 value matches ..-1 run scoreboard players operation @s botTempTargetY10 *= #-1 value
scoreboard players operation @s botTempTargetY10 %= #10 value

scoreboard players operation @s botTempTargetZ = #editArg3 value
scoreboard players operation @s botTempTargetZ /= #10 value
scoreboard players operation @s botTempTargetZ10 = #editArg3 value
execute if score #editArg3 value matches ..-1 run scoreboard players operation @s botTempTargetZ10 *= #-1 value
scoreboard players operation @s botTempTargetZ10 %= #10 value

#correct an off-by-one error in negative coordinates
execute if score #editArg1 value matches ..-10 unless score @s botTempTargetX10 matches 0 run scoreboard players add @s botTempTargetX 1
execute if score #editArg2 value matches ..-10 unless score @s botTempTargetY10 matches 0 run scoreboard players add @s botTempTargetY 1
execute if score #editArg3 value matches ..-10 unless score @s botTempTargetZ10 matches 0 run scoreboard players add @s botTempTargetZ 1

#set target to object id
scoreboard players operation @s botTargetID = #botTargetID value

tag @s remove reachedTempX
tag @s remove reachedTempZ