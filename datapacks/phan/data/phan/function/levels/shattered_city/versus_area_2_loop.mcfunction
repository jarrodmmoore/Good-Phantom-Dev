#teleporters
execute as @a[gamemode=adventure,tag=playing] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/versus_a2_teleport_1
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,x=-2584,y=127,z=-2312] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/versus_a2_teleport_1_bot

#wind gusts
execute if score #5Hz value matches 0 positioned -2393 89 -2333 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~.5 run function phan:levels/shattered_city/spawn_gust_visual_thin
execute if score #5Hz value matches 1 positioned -2393 89 -2323 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute positioned -2394 89 -2333 positioned ~-4 ~ ~-4 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=8,dy=19,dz=19] levitateState 3
execute if score #botsEnabled value matches 1.. positioned -2394 89 -2333 positioned ~-4 ~ ~-4 run scoreboard players set @e[tag=ai,type=zombie,dx=8,dy=19,dz=19] levitateState 3

#bots don't auto-advance as quickly in the last gliding section.
#75% auto advance speed on lap 1 between checkpoint 13..15
execute if score #botsEnabled value matches 1.. if score #2sec value matches 1..10 in overworld run scoreboard players remove @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botTimeSinceCP=2..,check=13..15}] botTimeSinceCP 1
#60% auto advance speed on lap 2 between checkpoint 13..15
execute if score #botsEnabled value matches 1.. if score #2sec value matches 11..16 in overworld run scoreboard players remove @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botTimeSinceCP=2..,check=13..15,lap=2..}] botTimeSinceCP 1
#reason: it's a really far checkpoint. it almost always results in bots spawning in front of the player and winning unfairly. that's no good!