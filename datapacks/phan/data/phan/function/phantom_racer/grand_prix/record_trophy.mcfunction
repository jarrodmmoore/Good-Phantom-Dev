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

#Is this a racing game? advancement
execute if score @s grandPrix1Trophy matches 31.. run advancement grant @s only phan:portal_race/is_this_a_racing_game istarg_cup1
execute if score @s grandPrix2Trophy matches 31.. run advancement grant @s only phan:portal_race/is_this_a_racing_game istarg_cup2
execute if score @s grandPrix3Trophy matches 31.. run advancement grant @s only phan:portal_race/is_this_a_racing_game istarg_cup3
execute if score @s grandPrix4Trophy matches 31.. run advancement grant @s only phan:portal_race/is_this_a_racing_game istarg_cup4
