#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if low skill
execute if score @s botSkill matches ..2 run return 0

#=====

#find next waypoint
execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointModifier value
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#check for mine at next waypoint
# 0 = no mine, go set one
# 1 = mine, not ours. boost off it if we have shield
# 2 = mine, is ours. boost off it
scoreboard players set #test value 0
scoreboard players operation #checkID value = @s playerID
execute at 00000309-0000-0000-0000-00000000000a if entity @e[type=item_display,tag=enemyMine,distance=..2] run scoreboard players set #test value 1
execute at 00000309-0000-0000-0000-00000000000a as @e[type=item_display,tag=enemyMine,distance=..2] if score @s playerID = #checkID value run scoreboard players set #test value 2
execute if entity @s[tag=!botRival] at 00000309-0000-0000-0000-00000000000a as @e[type=item_display,tag=enemyMine,distance=..2] if score @s playerID = #botRivalID value run scoreboard players set #test value -1
execute at 00000309-0000-0000-0000-00000000000a as @e[type=marker,tag=AIBC,scores={AIBC_event=13},distance=..1] run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/found_repeat
kill 00000309-0000-0000-0000-00000000000a
execute if score #test value matches 0 run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/go_set_mine
execute if score #test value matches 1 run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/possibly_boost_enemy_mine
execute if score #test value matches 2 run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/boost_self_owned_mine
execute if score #test value matches 3 run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/go_repeat_event