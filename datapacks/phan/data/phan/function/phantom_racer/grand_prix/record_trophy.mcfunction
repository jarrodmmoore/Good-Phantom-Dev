#executed by a player on themselves

#before running, should supply arguments as #offerTrophy
#10s digit is placement (priority)
#1s digit is difficulty

#remember the best trophy we got globally
execute if score #grandPrixActive value matches 1 if score #offerTrophy value > #grandPrix1Trophy value run scoreboard players operation #grandPrix1Trophy value = #offerTrophy value
execute if score #grandPrixActive value matches 2 if score #offerTrophy value > #grandPrix2Trophy value run scoreboard players operation #grandPrix2Trophy value = #offerTrophy value
execute if score #grandPrixActive value matches 3 if score #offerTrophy value > #grandPrix3Trophy value run scoreboard players operation #grandPrix3Trophy value = #offerTrophy value
execute if score #grandPrixActive value matches 4 if score #offerTrophy value > #grandPrix4Trophy value run scoreboard players operation #grandPrix4Trophy value = #offerTrophy value

#player records the best trophy they have on themselves
execute if score #grandPrixActive value matches 1 if score #offerTrophy value > @s grandPrix1Trophy run scoreboard players operation @s grandPrix1Trophy = #offerTrophy value
execute if score #grandPrixActive value matches 2 if score #offerTrophy value > @s grandPrix2Trophy run scoreboard players operation @s grandPrix2Trophy = #offerTrophy value
execute if score #grandPrixActive value matches 3 if score #offerTrophy value > @s grandPrix3Trophy run scoreboard players operation @s grandPrix3Trophy = #offerTrophy value
execute if score #grandPrixActive value matches 4 if score #offerTrophy value > @s grandPrix4Trophy run scoreboard players operation @s grandPrix4Trophy = #offerTrophy value

#unlock nightmare difficulty if we win on Expert or higher
execute if score #offerTrophy value matches 34.. run scoreboard players set #unlockedNightmare value 1

#unlock ultra-nightmare difficulty if we win every cup on nightmare
execute if score #grandPrix1Trophy value matches 35.. if score #grandPrix2Trophy value matches 35.. if score #grandPrix3Trophy value matches 35.. if score #grandPrix4Trophy value matches 35.. run scoreboard players set #unlockedUltranightmare value 1
