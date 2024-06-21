execute if score #chosenLevel value matches 1 run scoreboard players set @s musicTrack 1

execute if score #chosenLevel value matches 2 run scoreboard players set @s musicTrack 2

execute if score #chosenLevel value matches 3 run scoreboard players set @s[scores={pCurrentArea=..2}] musicTrack 3
execute if score #chosenLevel value matches 3 run scoreboard players set @s[scores={pCurrentArea=3..}] musicTrack 4

execute if score #chosenLevel value matches 4 run scoreboard players set @s musicTrack 10

execute if score #chosenLevel value matches 5 run scoreboard players set @s[scores={pCurrentArea=..1}] musicTrack 8
execute if score #chosenLevel value matches 5 run scoreboard players set @s[scores={pCurrentArea=2..}] musicTrack 9