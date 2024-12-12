scoreboard players remove @s squidBlindTime 1

#particles
tag @s add squidEffect
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^3 run particle squid_ink ~ ~ ~ 1.5 1.5 1.5 0.09 8 force @s
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^4 run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.09 5 force @s
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^1 run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0.09 3 force @a[tag=!squidEffect,distance=..50]
tag @s remove squidEffect

#blindness effect
#execute if score @s squidBlindTime matches 20.. run effect give @s blindness 5 14 false
#execute if score @s squidBlindTime matches 19 run effect clear @s blindness
#execute if score @s squidBlindTime matches 19 run effect give @s blindness 2 20 false
#execute if score @s squidBlindTime matches ..-30 run effect clear @s blindness

#darkness effect
execute if score @s squidBlindTime matches 0.. unless score @s shieldTime matches 1.. run effect give @s darkness 2 10 false
execute if score @s squidBlindTime matches 20.. if score @s shieldTime matches 1.. run effect give @s darkness 2 14 false
execute if score @s squidBlindTime matches ..-30 run effect clear @s darkness

#done
execute if score @s squidBlindTime matches ..-30 run scoreboard players reset @s squidBlindTime

#not blinded as long when using shield
execute if score @s shieldTime matches 1.. run function phan:items/blinding_squid_player_effect_reduced