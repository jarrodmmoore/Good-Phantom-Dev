#executed by an ai waypoint

#must have at least one score on x or z spread
#note: if a waypoint has 0,0 for optimal spread, this registers as not having any optimal spread
execute store result score #test4 value run execute if score @s AIBC_spread_x matches -2147483648..2147483647
execute if score @s AIBC_spread_z matches -2147483648..2147483647 run scoreboard players add #test4 value 1
execute unless score #test4 value matches 1.. run return 0
#=====

#macro for random particle location
scoreboard players set #recursions value 0
execute store result storage phan:ai_waypoint spread_x int 1 run scoreboard players get @s AIBC_spread_x
execute store result storage phan:ai_waypoint spread_z int 1 run scoreboard players get @s AIBC_spread_z
function phan:editor/panel/ai_waypoint/visualize/waypoint_go_optimal_macro with storage phan:ai_waypoint