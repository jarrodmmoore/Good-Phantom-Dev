#expected precondition:
#coord_xx and coord_zz are our target coordinates multiplied by 10

#offset the target slightly to help combat the bot being biased towards negative x and z
scoreboard players add #coord_xx value 5
scoreboard players add #coord_zz value 5

#split into multiple variables to deal with decimal point
scoreboard players operation @s botTargetXX = #coord_xx value
scoreboard players operation @s botTargetYY = #coord_yy value
scoreboard players operation @s botTargetZZ = #coord_zz value

scoreboard players operation @s botTargetX = @s botTargetXX
scoreboard players operation @s botTargetX /= #10 value
scoreboard players operation @s botTargetX10 = @s botTargetXX
scoreboard players operation @s botTargetX10 %= #10 value

scoreboard players operation @s botTargetY = @s botTargetYY
scoreboard players operation @s botTargetY /= #10 value
scoreboard players operation @s botTargetY10 = @s botTargetYY
scoreboard players operation @s botTargetY10 %= #10 value

scoreboard players operation @s botTargetZ = @s botTargetZZ
scoreboard players operation @s botTargetZ /= #10 value
scoreboard players operation @s botTargetZ10 = @s botTargetZZ
scoreboard players operation @s botTargetZ10 %= #10 value

#we want to move!
scoreboard players set #botWantsToMove value 1