#might deny this event depending on item luck and bot skill
execute if function phan:bots/behaviors/1_follow_waypoints/event/high_skill_and_luck_roll run return 0
#=====

#take alt route if still here
scoreboard players set #botChoseAltRoute value 1