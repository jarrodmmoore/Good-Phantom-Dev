particle entity_effect{color:[1.0,1.0,1.0,1.0]} ~ ~.15 ~ 0.1 0.1 0.1 0 2 force

#get difference between coords of player and waypoint
execute store result score #waypointSpreadX value run data get entity @s Pos[0]
execute store result score #waypointSpreadZ value run data get entity @s Pos[2]
scoreboard players operation #waypointSpreadX value -= #coord_x value
scoreboard players operation #waypointSpreadZ value -= #coord_z value
#negate the scores so we're not opposite the player
scoreboard players operation #waypointSpreadX value *= #-1 value
scoreboard players operation #waypointSpreadZ value *= #-1 value
#cap it at +-10
execute if score #waypointSpreadX value matches 11.. run scoreboard players set #waypointSpreadX value 10
execute if score #waypointSpreadZ value matches 11.. run scoreboard players set #waypointSpreadZ value 10
execute if score #waypointSpreadX value matches ..-11 run scoreboard players set #waypointSpreadX value -10
execute if score #waypointSpreadZ value matches ..-11 run scoreboard players set #waypointSpreadZ value -10

#apply the score directly to ourselves
scoreboard players operation @s AIBC_spread_x = #waypointSpreadX value
scoreboard players operation @s AIBC_spread_z = #waypointSpreadZ value
#remember: when stored on a waypoint, AIBC_spread_X is actually the optimal spread!