data merge entity @s {Tags:["playerPosMarker","nonPlayer"],width:0,height:0}
scoreboard players operation @s playerID = #setID value

#we'll be killed as soon as we assign position to our player, but we'll also die at the end of this tick as a failsafe
scoreboard players set @s lifespan 0

#get scores
execute if score #test3 value matches 1.. run return run tag @s add vsHomeStretch
#=====
scoreboard players operation @s checkFake = #test1 value
scoreboard players operation @s lap = #test2 value