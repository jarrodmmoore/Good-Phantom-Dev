#kill plane beneath level
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..69}] in the_end run function phan:game/4/race/respawn
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={location_y=..69}] run tag @s add botRespawn

#teleporters
execute as @a[gamemode=adventure,tag=playing] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/versus_a1_teleport_1
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,x=-2224,y=84,z=-2529,distance=..8] at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/versus_a1_teleport_1_bot

#wind gusts
execute if score #10Hz value matches 0 positioned -2275 74 -2531 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_wide
execute if score #5Hz value matches 1 positioned -2217 91 -2428 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute positioned -2275 74 -2531 positioned ~-6 ~ ~-6 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=16,dy=15,dz=11] levitateState 3
execute positioned -2217 94 -2428 positioned ~-5 ~ ~-5 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=9,dy=15,dz=9] levitateState 3
execute if score #botsEnabled value matches 1.. positioned -2275 74 -2531 positioned ~-6 ~ ~-6 run scoreboard players set @e[tag=ai,type=zombie,dx=16,dy=15,dz=11] levitateState 3
execute if score #botsEnabled value matches 1.. positioned -2217 94 -2428 positioned ~-5 ~ ~-5 run scoreboard players set @e[tag=ai,type=zombie,dx=9,dy=15,dz=9] levitateState 3
