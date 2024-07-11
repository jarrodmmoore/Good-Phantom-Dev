#executed by a armor_stand entity that stores scores for some given level
#run at the location of an array of signs that store the strings for the leaderboard of some given level

#=====
# OVERALL TOP 5
# (don't care about duplicate playerID, just record the time if it's worthy)

#how many scores did we beat?
scoreboard players set #scorePlacement value 6
execute if score #inputScore value < @s bestTime5 run scoreboard players set #scorePlacement value 5
execute if score #inputScore value < @s bestTime4 run scoreboard players set #scorePlacement value 4
execute if score #inputScore value < @s bestTime3 run scoreboard players set #scorePlacement value 3
execute if score #inputScore value < @s bestTime2 run scoreboard players set #scorePlacement value 2
execute if score #inputScore value < @s bestTime1 run scoreboard players set #scorePlacement value 1

#scoot the signs over that we beat out
execute if score #scorePlacement value matches ..4 run clone ~ ~ ~3 ~ ~ ~3 ~ ~ ~4
execute if score #scorePlacement value matches ..3 run clone ~ ~ ~2 ~ ~ ~2 ~ ~ ~3
execute if score #scorePlacement value matches ..2 run clone ~ ~ ~1 ~ ~ ~1 ~ ~ ~2
execute if score #scorePlacement value matches ..1 run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1

#scoot the scores over that we beat out
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s bestTime5 = @s bestTime4
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s bestTime4 = @s bestTime3
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s bestTime3 = @s bestTime2
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s bestTime2 = @s bestTime1

#record data on the sign
execute if score #scorePlacement value matches 1 positioned ~ ~ ~ run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 2 positioned ~ ~ ~1 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 3 positioned ~ ~ ~2 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 4 positioned ~ ~ ~3 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 5 positioned ~ ~ ~4 run function phan:high_score/record_time_sign

#record scores on scoreboard
execute if score #scorePlacement value matches 1 run scoreboard players operation @s bestTime1 = #inputScore value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s bestTime2 = #inputScore value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s bestTime3 = #inputScore value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s bestTime4 = #inputScore value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s bestTime5 = #inputScore value

#update placement field on signs
execute positioned ~ ~ ~ run function phan:high_score/sign_set_placement_texts

#=====

#=====
# UNIQUE TOP 5
# (if a duplicate playerID gets entered, remove the lower of the two)

#how many scores did we beat?
scoreboard players set #scorePlacement value 6
execute if score #inputScore value < @s uniqueTime5 run scoreboard players set #scorePlacement value 5
execute if score #inputScore value < @s uniqueTime4 run scoreboard players set #scorePlacement value 4
execute if score #inputScore value < @s uniqueTime3 run scoreboard players set #scorePlacement value 3
execute if score #inputScore value < @s uniqueTime2 run scoreboard players set #scorePlacement value 2
execute if score #inputScore value < @s uniqueTime1 run scoreboard players set #scorePlacement value 1

#check for duplicate playerID, mark the slot that's our duplicate
scoreboard players set #dupePlacement value 6
execute if score #inputID value = @s uniqueScoreID5 run scoreboard players set #dupePlacement value 5
execute if score #inputID value = @s uniqueScoreID4 run scoreboard players set #dupePlacement value 4
execute if score #inputID value = @s uniqueScoreID3 run scoreboard players set #dupePlacement value 3
execute if score #inputID value = @s uniqueScoreID2 run scoreboard players set #dupePlacement value 2
execute if score #inputID value = @s uniqueScoreID1 run scoreboard players set #dupePlacement value 1

#our scorePlacement must be lower than out dupePlacement, otherwise don't record anything
execute if score #dupePlacement value < #scorePlacement value run scoreboard players set #scorePlacement value 6

#scoot signs upward if we're removing an old duplicate score
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..1 run clone ~ ~ ~7 ~ ~ ~7 ~ ~ ~6
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..2 run clone ~ ~ ~8 ~ ~ ~8 ~ ~ ~7
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..3 run clone ~ ~ ~9 ~ ~ ~9 ~ ~ ~8
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..4 run clone ~ ~ ~10 ~ ~ ~10 ~ ~ ~9

#scoot scores upward if we're removing an old duplicate score
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..1 run scoreboard players operation @s uniqueTime1 = @s uniqueTime2
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..1 run scoreboard players operation @s uniqueScoreID1 = @s uniqueScoreID2
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..2 run scoreboard players operation @s uniqueTime2 = @s uniqueTime3
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..2 run scoreboard players operation @s uniqueScoreID2 = @s uniqueScoreID3
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..3 run scoreboard players operation @s uniqueTime3 = @s uniqueTime4
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..3 run scoreboard players operation @s uniqueScoreID3 = @s uniqueScoreID4
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..4 run scoreboard players operation @s uniqueTime4 = @s uniqueTime5
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..4 run scoreboard players operation @s uniqueScoreID4 = @s uniqueScoreID5

#ok, now that the possible duplicate is removed...

#scoot the signs over that we beat out
execute if score #scorePlacement value matches ..4 run clone ~ ~ ~9 ~ ~ ~9 ~ ~ ~10
execute if score #scorePlacement value matches ..3 run clone ~ ~ ~8 ~ ~ ~8 ~ ~ ~9
execute if score #scorePlacement value matches ..2 run clone ~ ~ ~7 ~ ~ ~7 ~ ~ ~8
execute if score #scorePlacement value matches ..1 run clone ~ ~ ~6 ~ ~ ~6 ~ ~ ~7

#scoot the scores over that we beat out
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s uniqueTime5 = @s uniqueTime4
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s uniqueScoreID5 = @s uniqueScoreID4
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s uniqueTime4 = @s uniqueTime3
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s uniqueScoreID4 = @s uniqueScoreID3
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s uniqueTime3 = @s uniqueTime2
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s uniqueScoreID3 = @s uniqueScoreID2
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s uniqueTime2 = @s uniqueTime1
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s uniqueScoreID2 = @s uniqueScoreID1

#record data on the sign
execute if score #scorePlacement value matches 1 positioned ~ ~ ~6 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 2 positioned ~ ~ ~7 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 3 positioned ~ ~ ~8 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 4 positioned ~ ~ ~9 run function phan:high_score/record_time_sign
execute if score #scorePlacement value matches 5 positioned ~ ~ ~10 run function phan:high_score/record_time_sign

#record scores on scoreboard
execute if score #scorePlacement value matches 1 run scoreboard players operation @s uniqueTime1 = #inputScore value
execute if score #scorePlacement value matches 1 run scoreboard players operation @s uniqueScoreID1 = #inputID value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s uniqueTime2 = #inputScore value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s uniqueScoreID2 = #inputID value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s uniqueTime3 = #inputScore value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s uniqueScoreID3 = #inputID value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s uniqueTime4 = #inputScore value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s uniqueScoreID4 = #inputID value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s uniqueTime5 = #inputScore value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s uniqueScoreID5 = #inputID value

#update placement field on signs
execute positioned ~ ~ ~6 run function phan:high_score/sign_set_placement_texts

#=====