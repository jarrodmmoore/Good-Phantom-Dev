#look up time limit for this act
execute unless score @s pCurrentArea matches 2..4 store result score @s pTimerGoal run data get storage phan_dream_active:sa_act_1 time_limit
execute if score @s pCurrentArea matches 2 store result score @s pTimerGoal run data get storage phan_dream_active:sa_act_2 time_limit
execute if score @s pCurrentArea matches 3 store result score @s pTimerGoal run data get storage phan_dream_active:sa_act_3 time_limit
#do nothing if we finished all 3 acts
execute if score @s pCurrentArea matches 4 run return 0
#time limit is in seconds, but we need it in ticks.
#multiply by 20, then add 19 (fine because numbers round down)
scoreboard players operation @s pTimerGoal *= #20 value
scoreboard players add @s pTimerGoal 19

#assist mode: get extra time
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimerGoal *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimerGoal /= #100 value
#assist mode: no time limit
execute if score #assist_time_limit value matches 2 run scoreboard players set @s pTimerGoal 900000000