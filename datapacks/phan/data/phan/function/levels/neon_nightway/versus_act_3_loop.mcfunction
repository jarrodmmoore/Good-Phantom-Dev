#act 3 reset if fallen onto the plateau thing
execute as @a[tag=playing] if score @s location_x matches -2881..-2812 if score @s location_y matches 62..77 if score @s location_z matches -144..-54 if score @s airTime matches ..2 run function phan:game/4/race/respawn
execute as @e[tag=ai,type=zombie] if score @s location_x matches -2881..-2812 if score @s location_y matches 62..77 if score @s location_z matches -144..-54 if score @s airTime matches ..2 run tag @s add botRespawn