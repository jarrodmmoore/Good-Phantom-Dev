#1/1 -- go special direction (unless path has a trap on it)
#13/X -- keep going last direction
#3/X -- go adjactent direction
#3/X -- go other adjactent direction
#1/X -- go polar opposite direction

#if we're a tryhard+ bot, try to restrict paths that have traps sitting on them
execute unless score @s racePosDisplay < #botRivalPosition value if entity @e[type=item_display,tag=enemyMine,distance=..20] run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_for_traps_all
