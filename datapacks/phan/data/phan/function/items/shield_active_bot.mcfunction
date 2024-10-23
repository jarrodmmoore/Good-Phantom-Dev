#not in spectator mode...
#execute if entity @s[gamemode=spectator] run scoreboard players set @s shieldTime 0

#resistance until timer runs out
scoreboard players remove @s shieldTime 1
execute if score @s shieldTime matches 62.. run effect give @s resistance 15 0 false
execute if score @s shieldTime matches 61 run effect clear @s resistance
execute if score @s shieldTime matches 61 run effect give @s resistance 3 0 false
execute if score @s shieldTime matches 0 run effect clear @s resistance

#fancy particles
#function phan:player/tell_spectators
scoreboard players operation #test value = @s shieldTime
scoreboard players operation #test value %= #36 value
execute positioned ~ ~1 ~ run function phan:items/shield_active_particles_index