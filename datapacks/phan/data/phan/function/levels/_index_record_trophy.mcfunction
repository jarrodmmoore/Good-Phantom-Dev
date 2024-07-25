#before running, should supply arguments as #offerTrophy
#10s digit is placement (priority)
#1s digit is difficulty

#remember the best trophy we got
execute if score #chosenLevel value matches 1 if score #offerTrophy value > #dream1Trophy value run scoreboard players operation #dream1Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 2 if score #offerTrophy value > #dream2Trophy value run scoreboard players operation #dream2Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 3 if score #offerTrophy value > #dream3Trophy value run scoreboard players operation #dream3Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 4 if score #offerTrophy value > #dream4Trophy value run scoreboard players operation #dream4Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 5 if score #offerTrophy value > #dream5Trophy value run scoreboard players operation #dream5Trophy value = #offerTrophy value

#REMINDER: need to also add new lines to phan:__reset_high_scores