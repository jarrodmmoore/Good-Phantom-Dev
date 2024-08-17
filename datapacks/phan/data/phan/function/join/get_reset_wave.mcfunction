#every time the map gets data erased, we also need to clear all "admin" tags from players who had admin in a previous era
scoreboard players add #resetWave value 0

scoreboard players add @s resetWave 0
execute unless score @s resetWave = #resetWave value run tag @s[tag=admin] remove admin
execute unless score @s resetWave = #resetWave value run tag @s[tag=musicDisable] remove musicDisable
execute unless score @s resetWave = #resetWave value run tag @s[tag=navCompass] remove navCompass

#we'll also use this to clear other data
execute unless score @s resetWave = #resetWave value run function phan:join/reset_player_data

#sync up again
scoreboard players operation @s resetWave = #resetWave value