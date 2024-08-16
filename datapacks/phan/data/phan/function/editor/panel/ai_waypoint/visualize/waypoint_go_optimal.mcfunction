#executed by an ai waypoint

#must have both scores!
execute unless score @s AIBC_spread_x matches -2147483648..2147483647 run return 0
execute unless score @s AIBC_spread_z matches -2147483648..2147483647 run return 0

#macro for random particle location
scoreboard players set #recursions value 0
execute store result storage phan:ai_waypoint spread_x int 1 run scoreboard players get @s AIBC_spread_x
execute store result storage phan:ai_waypoint spread_z int 1 run scoreboard players get @s AIBC_spread_z
function phan:editor/panel/ai_waypoint/visualize/waypoint_go_optimal_macro with storage phan:ai_waypoint