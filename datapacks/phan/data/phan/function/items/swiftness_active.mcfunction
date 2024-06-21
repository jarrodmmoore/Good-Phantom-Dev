#not in spectator mode...
execute if entity @s[gamemode=spectator] run scoreboard players set @s swiftnessTime 0

#speed II until timer runs out
scoreboard players remove @s swiftnessTime 1
execute if score @s swiftnessTime matches 20.. run effect give @s speed 1 2 false