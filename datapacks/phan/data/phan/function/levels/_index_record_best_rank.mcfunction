#executed by an individual player

#record rank if it's better than what we already have
execute if score #chosenLevel value matches 1 if score @s rankFinal < @s dream1Rank run scoreboard players operation @s dream1Rank = @s rankFinal
execute if score #chosenLevel value matches 2 if score @s rankFinal < @s dream2Rank run scoreboard players operation @s dream2Rank = @s rankFinal
execute if score #chosenLevel value matches 3 if score @s rankFinal < @s dream3Rank run scoreboard players operation @s dream3Rank = @s rankFinal
execute if score #chosenLevel value matches 4 if score @s rankFinal < @s dream4Rank run scoreboard players operation @s dream4Rank = @s rankFinal
execute if score #chosenLevel value matches 5 if score @s rankFinal < @s dream5Rank run scoreboard players operation @s dream5Rank = @s rankFinal

#check for advancements
execute if score @s dream1Rank matches ..1 if score @s dream2Rank matches ..1 if score @s dream3Rank matches ..1 if score @s dream4Rank matches ..1 if score @s dream5Rank matches ..1 run advancement grant @s only phan:score_attack/straight_a_student
execute if score @s dream1Rank matches ..0 if score @s dream2Rank matches ..0 if score @s dream3Rank matches ..0 if score @s dream4Rank matches ..0 if score @s dream5Rank matches ..0 run advancement grant @s only phan:score_attack/all_star