#(run by player)
#ok, so we know that the player is inside the loading zone now. let's respond accordingly

#currentLoad is whatever the load zone wants us to be
execute if score #setLoadZone value matches 0..5 run scoreboard players operation @s currentLoad = #setLoadZone value

#new area? load stuff
execute unless score @s currentLoad = @s previousLoad run function phan:game/1/player_area_new

#update previousLoad
scoreboard players operation @s previousLoad = @s currentLoad