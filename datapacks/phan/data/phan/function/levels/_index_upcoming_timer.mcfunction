execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_upcoming_timer
execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_upcoming_timer
execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_upcoming_timer
execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_upcoming_timer
execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_upcoming_timer
#...

#assist mode: get extra time
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimerGoal *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimerGoal /= #100 value
#assist mode: no time limit
execute if score #assist_time_limit value matches 2 run scoreboard players set @s pTimerGoal 900000000