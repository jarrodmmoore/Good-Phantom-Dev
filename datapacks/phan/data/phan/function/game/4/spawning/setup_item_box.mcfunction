#node will spawn and re-spawn item boxes independently of everything else

#track unique ID
scoreboard players add #itemBoxID value 1
scoreboard players operation @s boxID = #itemBoxID value

#using age to track spawn state
scoreboard players set @s age 0

#not enough players? don't spawn anything this game
execute if score #hudPeakPlayers value < @s editArg2 run scoreboard players set @s age -1

#items disabled? don't spawn anything this game
execute if score #assist_items value matches 1.. run scoreboard players set @s age -1