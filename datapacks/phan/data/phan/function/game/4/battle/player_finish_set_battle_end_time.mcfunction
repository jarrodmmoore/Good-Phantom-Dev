#battle will end 120 seconds after any finish
scoreboard players operation #newTimeLimit value = #vTimeLimit value
execute if score #assist_race_end_time value matches ..0 if score #newTimeLimit value matches 2400.. run scoreboard players set #newTimeLimit value 2400
#must abide by minimum time limit for level
scoreboard players operation #test value = #vTimeElapsed value
scoreboard players add #test value 2400
execute if score #test value < #vMinTimeLimit value run scoreboard players operation #newTimeLimit value = #vMinTimeLimit value
#apply the new time limit
scoreboard players operation #vTimeLimit value = #newTimeLimit value