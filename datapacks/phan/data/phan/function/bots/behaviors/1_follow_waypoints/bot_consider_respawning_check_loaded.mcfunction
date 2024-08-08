execute store result storage phan:coords target_x int 1 run scoreboard players get @s botTargetX
execute store result storage phan:coords target_z int 1 run scoreboard players get @s botTargetZ
function phan:bots/behaviors/1_follow_waypoints/bot_consider_respawning_check_loaded_macro with storage phan:coords