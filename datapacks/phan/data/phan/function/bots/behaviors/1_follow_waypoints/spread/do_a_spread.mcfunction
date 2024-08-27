#either use optimal, or biased random spread depending on skill level and related factors

#Q: what is biased random spread? you're making this up
#A: the bot will pick x and z bias that will make it prefer to stick to one side of the lane.
#-> this stops bots from running along in a single file conga line
#-> this also stops bots from constantly mobbing together in the center of the lane which would result from all of them picking a new random point every time
#A: also yes that's entirely true

#start in dead center (commented out because this has already been handled)
#scoreboard players operation #coord_xx value = #wpX value
#scoreboard players operation #coord_zz value = #wpZ value


#is the old waypoint's origin within 1m of the new waypoint? set the coordinates to our exact location, then
#(this lets us do some compound waypoint events without the bots doing a weird double-take)
scoreboard players operation #oldWpX value -= #coord_xx value
scoreboard players operation #oldWpY value -= #coord_yy value
scoreboard players operation #oldWpZ value -= #coord_zz value
execute if score #oldWpX value matches -10..10 if score #oldWpY value matches -10..10 if score #oldWpZ value matches -10..10 run return run function phan:bots/behaviors/1_follow_waypoints/spread/instant_collect_spread
#=====

#chance of taking optimal line depending on our skill
#(very easy has 0 chance)
scoreboard players set #random value 100
execute if score @s botSkill matches 2 store result score #random value run random value 1..100
execute if score @s botSkill matches 3 store result score #random value run random value 1..40
execute if score @s botSkill matches 4 store result score #random value run random value 1..25
execute if score @s botSkill matches 5 store result score #random value run random value 1..16
execute if score @s botSkill matches 6 store result score #random value run random value 1..12
#pulling a low number means we take optimal line
execute if score #random value matches ..10 unless score #wpOptimalX value matches -2147483648 unless score #wpOptimalZ value matches -2147483648 run return run function phan:bots/behaviors/1_follow_waypoints/spread/take_optimal_line
#=====

#still here? probably take a spread based on our bias

#chance of changing our bias by either mutating it or re-rolling completely
execute store result score #random value run random value 1..12
execute if score #random value matches 1 run function phan:bots/behaviors/1_follow_waypoints/spread/set_bias_random
execute if score #random value matches 2..4 run function phan:bots/behaviors/1_follow_waypoints/spread/mutate_bias

#apply the spread
function phan:bots/behaviors/1_follow_waypoints/spread/take_biased_line