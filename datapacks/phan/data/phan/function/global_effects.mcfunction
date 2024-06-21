#invis
effect give @a[gamemode=!creative] invisibility infinite 1 true
effect clear @a[gamemode=creative] invisibility

#instant health to anyone below max hp
execute as @a[scores={hp=..20}] at @s run function phan:player_health_set
execute as @a[scores={hp=21..423}] at @s run function phan:player_health

#saturation
effect give @a saturation infinite 10 true

#weakness while in lobby
execute if score #gameState value matches ..0 run effect give @a weakness 5 15 true