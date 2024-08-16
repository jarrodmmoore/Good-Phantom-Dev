#make use of decimal point
scoreboard players operation #test value = #waypointSpreadX value
scoreboard players operation #test value %= #10 value
execute store result storage phan:ai_waypoint spread_x2 int 1 run scoreboard players get #test value
scoreboard players operation #test value = #waypointSpreadZ value
scoreboard players operation #test value %= #10 value
execute store result storage phan:ai_waypoint spread_z2 int 1 run scoreboard players get #test value

#divide the rest by 10
scoreboard players operation #waypointSpreadX value /= #10 value
execute store result storage phan:ai_waypoint spread_x int 1 run scoreboard players get #waypointSpreadX value
scoreboard players operation #waypointSpreadZ value /= #10 value
execute store result storage phan:ai_waypoint spread_z int 1 run scoreboard players get #waypointSpreadZ value