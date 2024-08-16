execute unless score #globalplayerID value matches 1..1999999999 run scoreboard players set #globalplayerID value 1
scoreboard players operation @s playerID = #globalplayerID value
scoreboard players add #globalplayerID value 1