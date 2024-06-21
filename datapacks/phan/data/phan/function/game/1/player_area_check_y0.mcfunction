#-63 = reset immediately
execute if block ~ 1 ~ #phan:area_check if entity @s[gamemode=adventure] run function phan:game/1/player/respawn

#-62 = set sub-area (determines respawn point and what objects should spawn in the level)
execute if block ~ 2 ~ #phan:area_check run scoreboard players set @s currentLoad 1
execute if block ~ 3 ~ #phan:area_check run scoreboard players set @s currentLoad 2
execute if block ~ 4 ~ #phan:area_check run scoreboard players set @s currentLoad 3
execute if block ~ 5 ~ #phan:area_check run scoreboard players set @s currentLoad 4
execute if block ~ 6 ~ #phan:area_check run scoreboard players set @s currentLoad 5

#new area? load stuff
execute unless score @s currentLoad = @s previousLoad run function phan:game/1/player_area_new

#update previousLoad
scoreboard players operation @s previousLoad = @s currentLoad