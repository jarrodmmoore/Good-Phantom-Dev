#get finish pos
scoreboard players operation @s finishPos = #positionAssignMin value
scoreboard players operation @s racePosDisplay = @s finishPos

#on the sidebar, we will have a big big score to make sure we're in first
scoreboard players operation @s enderEyes = #eyeShowAssign value
scoreboard players remove #eyeShowAssign value 1

#we're done
tag @s add finished