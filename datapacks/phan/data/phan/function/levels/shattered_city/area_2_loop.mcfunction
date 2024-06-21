#area detection, special because this level is traversed both ways
execute as @a[tag=playing,scores={pCurrentArea=2}] at @s run function phan:levels/shattered_city/area_2_player_area_check

#wind gusts
execute if score #5Hz value matches 0 positioned 1625 92 2389 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~.5 run function phan:levels/shattered_city/spawn_gust_visual_thin
execute if score #5Hz value matches 1 positioned 1625 92 2399 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute positioned 1624 90 2389 positioned ~-4 ~ ~-4 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=8,dy=19,dz=19] levitateState 3

#close gate
execute if block 1391 140 2402 target run scoreboard players set #d3targetDoor2 value 0
execute if block 1391 140 2402 target unless block 1389 133 2401 iron_bars run fill 1389 133 2401 1389 137 2403 iron_bars

#open gate
execute if block 1391 140 2402 melon run scoreboard players add #d3targetDoor2 value 1

#door animates
execute if score #d3targetDoor2 value matches 1 run setblock 1389 133 2402 air
execute if score #d3targetDoor2 value matches 3 run fill 1389 133 2401 1389 133 2403 air
execute if score #d3targetDoor2 value matches 5 run setblock 1389 134 2402 air
execute if score #d3targetDoor2 value matches 7 run fill 1389 134 2401 1389 134 2403 air
execute if score #d3targetDoor2 value matches 9 run setblock 1389 135 2402 air
execute if score #d3targetDoor2 value matches 11 run fill 1389 135 2401 1389 135 2403 air
execute if score #d3targetDoor2 value matches 13 run setblock 1389 136 2402 air
execute if score #d3targetDoor2 value matches 15 run fill 1389 136 2401 1389 136 2403 air
execute if score #d3targetDoor2 value matches 17 run setblock 1389 137 2402 air
execute if score #d3targetDoor2 value matches 19 run fill 1389 137 2401 1389 137 2403 air