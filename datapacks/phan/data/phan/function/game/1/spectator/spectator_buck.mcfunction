#sync location with current location
scoreboard players operation @s spectator_xinit = #spectator_current_x value
scoreboard players operation @s spectator_yinit = #spectator_current_y value
scoreboard players operation @s spectator_zinit = #spectator_current_z value

#kick out of spectator target to force new chunks to load
gamemode adventure @s
gamemode spectator @s

#go to location of player RIGHT MEOW or else bugs will ensue
tp @s ~ ~ ~ ~ ~

#remove tag
tag @s[tag=spectatorBuck] remove spectatorBuck