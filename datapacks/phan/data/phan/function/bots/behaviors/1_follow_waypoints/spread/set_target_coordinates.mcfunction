#expected precondition:
#coord_xx and coord_zz are our target coordinates multiplied by 10

#split into multiple variables to deal with decimal point
scoreboard players operation @s botTargetXX = #coord_xx value
scoreboard players operation @s botTargetYY = #wpY value
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

#botTargetX is regular coordinate
#botTargetX10 is decimal number

#now we have target coordinates, each with an additional decimal point for accuracy so the mapper can make the bot move exactly where they want

#we also need to determine what direction we're coming in from
scoreboard players operation @s botApproachX = @s botTargetXX
scoreboard players operation @s botApproachX -= @s location_xx
scoreboard players operation @s botApproachY = @s botTargetYY
scoreboard players operation @s botApproachY -= @s location_yy
scoreboard players operation @s botApproachZ = @s botTargetZZ
scoreboard players operation @s botApproachZ -= @s location_zz
scoreboard players set @s botTimeInRange 0

#reset our "progress" in getting near the next waypoint
scoreboard players set @s botProgressXX 2147483647
scoreboard players set @s botProgressYY 2147483647
scoreboard players set @s botProgressZZ 2147483647
scoreboard players set @s botTimeSinceProgress 0

#remember the last two nodes we targeted
scoreboard players operation @s AIBC_selected2 = @s AIBC_selected
scoreboard players operation @s AIBC_selected = #wpTarget value

#max y value we can target
scoreboard players operation @s botTargetYYCeiling = #wpCeiling value

#set target
scoreboard players operation @s botTargetWaypoint = #wpTarget value