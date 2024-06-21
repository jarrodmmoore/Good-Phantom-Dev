scoreboard players remove @s squidBlindTime 1

#particles
tag @s add squidEffect
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^3 run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.09 5 force @s
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^4 run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.09 5 force @s
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^1 run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0.09 3 force @a[tag=!squidEffect,distance=..50]
tag @s remove squidEffect

#blindness effect
execute if score @s squidBlindTime matches 20.. run effect give @s blindness 5 14 false
execute if score @s squidBlindTime matches 19 run effect clear @s blindness
execute if score @s squidBlindTime matches 19 run effect give @s blindness 2 20 false
execute if score @s squidBlindTime matches ..-30 run effect clear @s blindness

#done
execute if score @s squidBlindTime matches ..-30 run scoreboard players reset @s squidBlindTime

#not blinded as long when using shield
execute if score @s shieldTime matches 1.. run function phan:items/blinding_squid_player_effect_reduced