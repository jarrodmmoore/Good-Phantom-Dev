#get finish pos
scoreboard players operation @s finishPos = #positionAssignMin value
scoreboard players operation @s racePosDisplay = @s finishPos

#we're done
tag @s add finished