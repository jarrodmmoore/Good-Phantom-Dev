#get assigned 1 of the 3 acts to start on
scoreboard players add #actAssign value 1
scoreboard players operation @s pCurrentArea = #actAssign value

#max of 3 players. reject any players beyond that
execute if score #actAssign value matches 4.. run tag @s remove playing
#this shouldn't be possible because of how "playing" team assignments are done before booting score attack mode, but y'never know

#free play mode: force all players to play the specific chosen act
execute if score #freePlay value matches 1 run scoreboard players operation @s pCurrentArea = #freePlayAct value