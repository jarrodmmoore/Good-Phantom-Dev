#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if we're >= 50% done with this lap
scoreboard players operation #test value = @s checkFake
scoreboard players operation #test value *= #100 value
scoreboard players operation #test value /= #vCheckPoints value
execute if score #test value matches 50.. run return 0

#=====

#take alt route
scoreboard players set #botChoseAltRoute value 2