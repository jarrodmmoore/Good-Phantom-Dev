#zero some values out
scoreboard players set @s spectatingID -1
scoreboard players set @s hudNode 0
scoreboard players set @s pShowHUD 0

#don't let spectators fly super far away and gen new chunks
execute if score #2sec value matches 0 at @s run function phan:game/1/spectator/keep_near_track