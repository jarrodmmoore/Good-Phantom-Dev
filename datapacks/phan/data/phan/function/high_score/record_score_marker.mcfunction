#executed by a armor_stand entity that stores scores for some given level
#run at the location of an array of signs that store the strings for the leaderboard of some given level

#new best rank? record it
execute if score #inputRank value < @s highestRank run scoreboard players operation @s highestRank = #inputRank value

#=====
# OVERALL TOP 5
# (don't care about duplicate playerID, just record the score if it's worthy)

#how many scores did we beat?
scoreboard players set #scorePlacement value 6
execute if score #inputScore value > @s bestScore5 run scoreboard players set #scorePlacement value 5
execute if score #inputScore value > @s bestScore4 run scoreboard players set #scorePlacement value 4
execute if score #inputScore value > @s bestScore3 run scoreboard players set #scorePlacement value 3
execute if score #inputScore value > @s bestScore2 run scoreboard players set #scorePlacement value 2
execute if score #inputScore value > @s bestScore1 run scoreboard players set #scorePlacement value 1

#scoot the signs over that we beat out
execute if score #scorePlacement value matches ..4 run clone ~ ~ ~3 ~ ~ ~3 ~ ~ ~4
execute if score #scorePlacement value matches ..3 run clone ~ ~ ~2 ~ ~ ~2 ~ ~ ~3
execute if score #scorePlacement value matches ..2 run clone ~ ~ ~1 ~ ~ ~1 ~ ~ ~2
execute if score #scorePlacement value matches ..1 run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1

#scoot the scores over that we beat out
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s bestScore5 = @s bestScore4
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s bestScore4 = @s bestScore3
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s bestScore3 = @s bestScore2
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s bestScore2 = @s bestScore1

#record data on the sign
execute if score #scorePlacement value matches 1 positioned ~ ~ ~ run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 2 positioned ~ ~ ~1 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 3 positioned ~ ~ ~2 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 4 positioned ~ ~ ~3 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 5 positioned ~ ~ ~4 run function phan:high_score/record_score_sign

#record scores on scoreboard
execute if score #scorePlacement value matches 1 run scoreboard players operation @s bestScore1 = #inputScore value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s bestScore2 = #inputScore value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s bestScore3 = #inputScore value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s bestScore4 = #inputScore value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s bestScore5 = #inputScore value

#update placement field on signs
execute positioned ~ ~ ~ run function phan:high_score/sign_set_placement_texts

#=====

#=====
# UNIQUE TOP 5
# (if a duplicate playerID gets entered, remove the lower of the two)

#how many scores did we beat?
scoreboard players set #scorePlacement value 6
execute if score #inputScore value > @s uniqueScore5 run scoreboard players set #scorePlacement value 5
execute if score #inputScore value > @s uniqueScore4 run scoreboard players set #scorePlacement value 4
execute if score #inputScore value > @s uniqueScore3 run scoreboard players set #scorePlacement value 3
execute if score #inputScore value > @s uniqueScore2 run scoreboard players set #scorePlacement value 2
execute if score #inputScore value > @s uniqueScore1 run scoreboard players set #scorePlacement value 1

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
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..1 run scoreboard players operation @s uniqueScore1 = @s uniqueScore2
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..1 run scoreboard players operation @s uniqueScoreID1 = @s uniqueScoreID2
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..2 run scoreboard players operation @s uniqueScore2 = @s uniqueScore3
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..2 run scoreboard players operation @s uniqueScoreID2 = @s uniqueScoreID3
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..3 run scoreboard players operation @s uniqueScore3 = @s uniqueScore4
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..3 run scoreboard players operation @s uniqueScoreID3 = @s uniqueScoreID4
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..4 run scoreboard players operation @s uniqueScore4 = @s uniqueScore5
execute unless score #scorePlacement value matches 6 if score #dupePlacement value matches ..4 run scoreboard players operation @s uniqueScoreID4 = @s uniqueScoreID5

#ok, now that the possible duplicate is removed...

#scoot the signs over that we beat out
execute if score #scorePlacement value matches ..4 run clone ~ ~ ~9 ~ ~ ~9 ~ ~ ~10
execute if score #scorePlacement value matches ..3 run clone ~ ~ ~8 ~ ~ ~8 ~ ~ ~9
execute if score #scorePlacement value matches ..2 run clone ~ ~ ~7 ~ ~ ~7 ~ ~ ~8
execute if score #scorePlacement value matches ..1 run clone ~ ~ ~6 ~ ~ ~6 ~ ~ ~7

#scoot the scores over that we beat out
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s uniqueScore5 = @s uniqueScore4
execute if score #scorePlacement value matches ..4 run scoreboard players operation @s uniqueScoreID5 = @s uniqueScoreID4
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s uniqueScore4 = @s uniqueScore3
execute if score #scorePlacement value matches ..3 run scoreboard players operation @s uniqueScoreID4 = @s uniqueScoreID3
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s uniqueScore3 = @s uniqueScore2
execute if score #scorePlacement value matches ..2 run scoreboard players operation @s uniqueScoreID3 = @s uniqueScoreID2
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s uniqueScore2 = @s uniqueScore1
execute if score #scorePlacement value matches ..1 run scoreboard players operation @s uniqueScoreID2 = @s uniqueScoreID1

#record data on the sign
execute if score #scorePlacement value matches 1 positioned ~ ~ ~6 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 2 positioned ~ ~ ~7 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 3 positioned ~ ~ ~8 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 4 positioned ~ ~ ~9 run function phan:high_score/record_score_sign
execute if score #scorePlacement value matches 5 positioned ~ ~ ~10 run function phan:high_score/record_score_sign

#record scores on scoreboard
execute if score #scorePlacement value matches 1 run scoreboard players operation @s uniqueScore1 = #inputScore value
execute if score #scorePlacement value matches 1 run scoreboard players operation @s uniqueScoreID1 = #inputID value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s uniqueScore2 = #inputScore value
execute if score #scorePlacement value matches 2 run scoreboard players operation @s uniqueScoreID2 = #inputID value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s uniqueScore3 = #inputScore value
execute if score #scorePlacement value matches 3 run scoreboard players operation @s uniqueScoreID3 = #inputID value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s uniqueScore4 = #inputScore value
execute if score #scorePlacement value matches 4 run scoreboard players operation @s uniqueScoreID4 = #inputID value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s uniqueScore5 = #inputScore value
execute if score #scorePlacement value matches 5 run scoreboard players operation @s uniqueScoreID5 = #inputID value

#update placement field on signs
execute positioned ~ ~ ~6 run function phan:high_score/sign_set_placement_texts

#=====