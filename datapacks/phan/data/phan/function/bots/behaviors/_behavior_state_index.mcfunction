#LEGEND
#-1 = do nothing
#0 = do nothing, immediately switch to behavior 1 if "GO!" has happened
#1 = follow AI waypoints
#2 = roam around randomly
#3 = attack a target (like a player)

execute if score @s botBehavior matches 0 run function phan:bots/behaviors/0_await_start/_0_tick
execute if score @s botBehavior matches 1 run return run function phan:bots/behaviors/1_follow_waypoints/_1_tick
execute if score @s botBehavior matches 2 run return run function phan:bots/behaviors/2_roam/_2_tick
execute if score @s botBehavior matches 3 run return run function phan:bots/behaviors/3_follow_target/_3_tick