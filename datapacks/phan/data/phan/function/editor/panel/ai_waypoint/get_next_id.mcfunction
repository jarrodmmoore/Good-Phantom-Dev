execute if score #waypointID value matches -1 run tellraw @a ["",{text:"[ ! ] You've run out of available IDs for AI waypoints! Things might get weird...",color:"red"}]

#increment
scoreboard players add #waypointID value 1
#and don't be 0
execute if score #waypointID value matches 0 run scoreboard players add #waypointID value 1

#get tags using modulus to speed up searches
scoreboard players operation #test value = #waypointID value
scoreboard players operation #test value %= #100 value
scoreboard players operation #test2 value = #waypointID value
scoreboard players operation #test2 value /= #100 value
scoreboard players operation #test2 value %= #100 value

#put in storage
execute store result storage phan:ai_waypoint tag1 int 1 run scoreboard players get #test value
execute store result storage phan:ai_waypoint tag2 int 1 run scoreboard players get #test2 value