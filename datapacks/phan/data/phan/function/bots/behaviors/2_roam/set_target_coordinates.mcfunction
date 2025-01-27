#expected precondition:
#coord_xx and coord_zz are our target coordinates multiplied by 10

#split into multiple variables to deal with decimal point
scoreboard players operation @s botTargetXX = #coord_xx value
scoreboard players operation @s botTargetYY = #coord_yy value
scoreboard players operation @s botTargetZZ = #coord_zz value

scoreboard players operation @s botTargetX = @s botTargetXX
scoreboard players operation @s botTargetX /= #10 value
scoreboard players operation @s botTargetX10 = @s botTargetXX
execute if score @s botTargetXX matches ..-1 run scoreboard players operation @s botTargetX10 *= #-1 value
scoreboard players operation @s botTargetX10 %= #10 value

scoreboard players operation @s botTargetY = @s botTargetYY
scoreboard players operation @s botTargetY /= #10 value
scoreboard players operation @s botTargetY10 = @s botTargetYY
execute if score @s botTargetYY matches ..-1 run scoreboard players operation @s botTargetY10 *= #-1 value
scoreboard players operation @s botTargetY10 %= #10 value

scoreboard players operation @s botTargetZ = @s botTargetZZ
scoreboard players operation @s botTargetZ /= #10 value
scoreboard players operation @s botTargetZ10 = @s botTargetZZ
execute if score @s botTargetZZ matches ..-1 run scoreboard players operation @s botTargetZ10 *= #-1 value
scoreboard players operation @s botTargetZ10 %= #10 value

#correct an off-by-one error in negative coordinates
execute if score @s botTargetXX matches ..-10 unless score @s botTargetX10 matches 0 run scoreboard players add @s botTargetX 1
execute if score @s botTargetYY matches ..-10 unless score @s botTargetY10 matches 0 run scoreboard players add @s botTargetY 1
execute if score @s botTargetZZ matches ..-10 unless score @s botTargetZ10 matches 0 run scoreboard players add @s botTargetZ 1

#we want to move!
scoreboard players set #botWantsToMove value 1