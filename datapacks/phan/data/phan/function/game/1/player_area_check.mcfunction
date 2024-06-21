#-63 = reset immediately
execute if block ~ -63 ~ #phan:area_check if entity @s[gamemode=adventure] if score #gameState value matches 0 run function phan:game/0/player/handle_respawn_trigger
execute if block ~ -63 ~ #phan:area_check if entity @s[gamemode=adventure] unless score #gameState value matches 0 run function phan:game/1/player/respawn

#-62 = set sub-area (determines respawn point and what objects should spawn in the level)
execute if block ~ -62 ~ #phan:area_check run scoreboard players set @s currentLoad 1
execute if block ~ -61 ~ #phan:area_check run scoreboard players set @s currentLoad 2
execute if block ~ -60 ~ #phan:area_check run scoreboard players set @s currentLoad 3
execute if block ~ -59 ~ #phan:area_check run scoreboard players set @s currentLoad 4
execute if block ~ -58 ~ #phan:area_check run scoreboard players set @s currentLoad 5

#new area? load stuff
execute unless score @s currentLoad = @s previousLoad run function phan:game/1/player_area_new

#update previousLoad
scoreboard players operation @s previousLoad = @s currentLoad