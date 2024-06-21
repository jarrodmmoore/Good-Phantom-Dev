#touching the purple floor causes respawn
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-.1 ~ purple_stained_glass run function phan:game/1/player/respawn

#area 2 platform swaps
execute if entity @a[tag=playing,scores={pCurrentArea=2}] run function phan:levels/neon_nightway/area_2_loop

#area 3 platform swaps
execute if entity @a[tag=playing,scores={pCurrentArea=3}] run function phan:levels/neon_nightway/area_3_loop