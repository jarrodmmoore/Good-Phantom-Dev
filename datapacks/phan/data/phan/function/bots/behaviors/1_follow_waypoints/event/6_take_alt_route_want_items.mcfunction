#might deny this event depending on item luck and bot skill
execute if function phan:bots/behaviors/1_follow_waypoints/event/luck_roll run return 0
#=====

#take alt route
scoreboard players set #botChoseAltRoute value 1