#kill plane beneath level
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..50}] in the_end run function phan:game/4/race/respawn

#teleporters
execute as @a[gamemode=adventure,tag=playing] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/versus_a2_teleport_1

#wind gusts
execute if score #5Hz value matches 0 positioned -2393 89 -2333 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~.5 run function phan:levels/shattered_city/spawn_gust_visual_thin
execute if score #5Hz value matches 1 positioned -2393 89 -2323 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute positioned -2394 89 -2333 positioned ~-4 ~ ~-4 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=8,dy=19,dz=19] levitateState 3
