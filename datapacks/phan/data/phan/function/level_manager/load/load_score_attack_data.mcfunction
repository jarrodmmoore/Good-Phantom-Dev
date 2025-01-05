#time attack times
execute store result score #timeBronze value run data get storage phan_dream_active:score_attack time_bronze
execute store result score #timeSilver value run data get storage phan_dream_active:score_attack time_silver
execute store result score #timeGold value run data get storage phan_dream_active:score_attack time_gold
execute store result score #timeDiamond value run data get storage phan_dream_active:score_attack time_diamond

#load data for all 3 acts at once
#sort of an odd approach, but it worked back then and it still works now

#time limit, assigned onto player
#(need to multiply by 20 and then add 19)
execute store result score #math value run data get storage phan_dream_active:sa_act_1 time_limit
scoreboard players operation #math value *= #20 value
scoreboard players add #math value 19
scoreboard players operation @s[tag=playing,scores={pCurrentArea=1}] pTimeRemaining = #math value

execute store result score #math value run data get storage phan_dream_active:sa_act_2 time_limit
scoreboard players operation #math value *= #20 value
scoreboard players add #math value 19
scoreboard players operation @s[tag=playing,scores={pCurrentArea=2}] pTimeRemaining = #math value

execute store result score #math value run data get storage phan_dream_active:sa_act_3 time_limit
scoreboard players operation #math value *= #20 value
scoreboard players add #math value 19
scoreboard players operation @s[tag=playing,scores={pCurrentArea=3}] pTimeRemaining = #math value

#pearls needed, assigned onto player
execute store result score @s[tag=playing,scores={pCurrentArea=1}] pPearlsNeeded run data get storage phan_dream_active:sa_act_1 pearls_needed
execute store result score @s[tag=playing,scores={pCurrentArea=2}] pPearlsNeeded run data get storage phan_dream_active:sa_act_2 pearls_needed
execute store result score @s[tag=playing,scores={pCurrentArea=3}] pPearlsNeeded run data get storage phan_dream_active:sa_act_3 pearls_needed

#score thresholds
execute store result score #scoreRankS1 value run data get storage phan_dream_active:sa_act_1 score_requirement_s
execute store result score #scoreRankA1 value run data get storage phan_dream_active:sa_act_1 score_requirement_a
execute store result score #scoreRankB1 value run data get storage phan_dream_active:sa_act_1 score_requirement_b
execute store result score #scoreRankC1 value run data get storage phan_dream_active:sa_act_1 score_requirement_c

execute store result score #scoreRankS2 value run data get storage phan_dream_active:sa_act_2 score_requirement_s
execute store result score #scoreRankA2 value run data get storage phan_dream_active:sa_act_2 score_requirement_a
execute store result score #scoreRankB2 value run data get storage phan_dream_active:sa_act_2 score_requirement_b
execute store result score #scoreRankC2 value run data get storage phan_dream_active:sa_act_2 score_requirement_c

execute store result score #scoreRankS3 value run data get storage phan_dream_active:sa_act_3 score_requirement_s
execute store result score #scoreRankA3 value run data get storage phan_dream_active:sa_act_3 score_requirement_a
execute store result score #scoreRankB3 value run data get storage phan_dream_active:sa_act_3 score_requirement_b
execute store result score #scoreRankC3 value run data get storage phan_dream_active:sa_act_3 score_requirement_c

#target times
#(format is [minute, decasecond, second], need to convert to seconds)
execute store result score #targetTimeAct1 value run data get storage phan_dream_active:sa_act_1 target_time[2]
execute store result score #math value run data get storage phan_dream_active:sa_act_1 target_time[1]
scoreboard players operation #math value *= #10 value
scoreboard players operation #targetTimeAct1 value += #math value
execute store result score #math value run data get storage phan_dream_active:sa_act_1 target_time[0]
scoreboard players operation #math value *= #60 value
scoreboard players operation #targetTimeAct1 value += #math value

execute store result score #targetTimeAct2 value run data get storage phan_dream_active:sa_act_2 target_time[2]
execute store result score #math value run data get storage phan_dream_active:sa_act_2 target_time[1]
scoreboard players operation #math value *= #10 value
scoreboard players operation #targetTimeAct2 value += #math value
execute store result score #math value run data get storage phan_dream_active:sa_act_2 target_time[0]
scoreboard players operation #math value *= #60 value
scoreboard players operation #targetTimeAct2 value += #math value

execute store result score #targetTimeAct3 value run data get storage phan_dream_active:sa_act_3 target_time[2]
execute store result score #math value run data get storage phan_dream_active:sa_act_3 target_time[1]
scoreboard players operation #math value *= #10 value
scoreboard players operation #targetTimeAct3 value += #math value
execute store result score #math value run data get storage phan_dream_active:sa_act_3 target_time[0]
scoreboard players operation #math value *= #60 value
scoreboard players operation #targetTimeAct3 value += #math value