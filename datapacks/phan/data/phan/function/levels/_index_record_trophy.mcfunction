#before running, should supply arguments as #offerTrophy
#10s digit is placement (priority)
#1s digit is difficulty

#remember the best trophy we got globally
execute if score #chosenLevel value matches 1 if score #offerTrophy value > #dream1Trophy value run scoreboard players operation #dream1Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 2 if score #offerTrophy value > #dream2Trophy value run scoreboard players operation #dream2Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 3 if score #offerTrophy value > #dream3Trophy value run scoreboard players operation #dream3Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 4 if score #offerTrophy value > #dream4Trophy value run scoreboard players operation #dream4Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 5 if score #offerTrophy value > #dream5Trophy value run scoreboard players operation #dream5Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 6 if score #offerTrophy value > #dream6Trophy value run scoreboard players operation #dream6Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 7 if score #offerTrophy value > #dream7Trophy value run scoreboard players operation #dream7Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 8 if score #offerTrophy value > #dream8Trophy value run scoreboard players operation #dream8Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 9 if score #offerTrophy value > #dream9Trophy value run scoreboard players operation #dream9Trophy value = #offerTrophy value
execute if score #chosenLevel value matches 10 if score #offerTrophy value > #dream10Trophy value run scoreboard players operation #dream10Trophy value = #offerTrophy value

#player records the best trophy they have on themselves
execute if score #chosenLevel value matches 1 if score #offerTrophy value > @s dream1Trophy run scoreboard players operation @s dream1Trophy = #offerTrophy value
execute if score #chosenLevel value matches 2 if score #offerTrophy value > @s dream2Trophy run scoreboard players operation @s dream2Trophy = #offerTrophy value
execute if score #chosenLevel value matches 3 if score #offerTrophy value > @s dream3Trophy run scoreboard players operation @s dream3Trophy = #offerTrophy value
execute if score #chosenLevel value matches 4 if score #offerTrophy value > @s dream4Trophy run scoreboard players operation @s dream4Trophy = #offerTrophy value
execute if score #chosenLevel value matches 5 if score #offerTrophy value > @s dream5Trophy run scoreboard players operation @s dream5Trophy = #offerTrophy value