#executed by a botController

#assign position
scoreboard players operation @s racePosCalc = #positionAssign value
scoreboard players add #positionAssign value 1

#we're ranked!
tag @s remove botRankable