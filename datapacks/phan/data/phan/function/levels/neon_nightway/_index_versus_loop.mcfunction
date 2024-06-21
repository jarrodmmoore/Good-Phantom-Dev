#act 1
execute if score #vAct value matches 1 run function phan:levels/neon_nightway/versus_act_1_loop

#act 2 teleporter
execute if score #vAct value matches 2 as @a[tag=playing] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/neon_nightway/versus_act_2_teleport

#act 3 reset if fallen onto the plateau thing
execute if score #vAct value matches 3 as @a[tag=playing] if score @s location_x matches -2881..-2812 if score @s location_y matches 62..77 if score @s location_z matches -144..-54 if score @s airTime matches ..2 run function phan:game/4/race/respawn

#touching the purple floor causes respawn
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-.1 ~ purple_stained_glass run function phan:game/4/race/respawn

#reset players if they somehow get below the floor
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..60}] run function phan:game/4/race/respawn