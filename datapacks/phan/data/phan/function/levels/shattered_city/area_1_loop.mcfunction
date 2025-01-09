#teleporters
execute as @a[gamemode=adventure,tag=playing,scores={pCurrentArea=1}] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/a1_teleport_index

#wind gusts
execute if score #5Hz value matches 0 positioned 1721 75 2207 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~.5 run function phan:levels/shattered_city/spawn_gust_visual_thin
execute if score #10Hz value matches 0 positioned 1744 75 2191 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_wide
execute if score #5Hz value matches 1 positioned 1802 96 2294 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute if score #5Hz value matches 2 positioned 1646 100 2205 positioned ~-50 ~-200 ~-50 if entity @a[dx=100,dy=400,dz=100] positioned ~50 ~200 ~50 positioned ~ ~ ~ run function phan:levels/shattered_city/spawn_gust_visual_thin
execute positioned 1721 75 2207 positioned ~-4 ~ ~-4 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=7,dy=15,dz=7] levitateState 3
execute positioned 1744 75 2191 positioned ~-6 ~ ~-6 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=14,dy=15,dz=11] levitateState 3
execute positioned 1802 96 2294 positioned ~-5 ~ ~-5 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=9,dy=15,dz=9] levitateState 3
execute positioned 1646 100 2205 positioned ~-6 ~ ~-4 run scoreboard players set @a[tag=playing,gamemode=adventure,dx=11,dy=15,dz=7] levitateState 3

#close gate
execute if block 1778 130 2108 target if block 1795 129 2120 target if block 1795 124 2132 target if block 1780 127 2144 target run scoreboard players set #d3targetDoor value 0
execute if block 1778 130 2108 target if block 1795 129 2120 target if block 1795 124 2132 target if block 1780 127 2144 target unless block 1800 118 2125 dark_oak_slab[type=double] run fill 1800 118 2125 1800 124 2127 dark_oak_slab[type=double]

#open gate
execute if block 1778 130 2108 melon if block 1795 129 2120 melon if block 1795 124 2132 melon if block 1780 127 2144 melon run scoreboard players add #d3targetDoor value 1

#door animates
execute if score #d3targetDoor value matches 1 run fill 1800 118 2125 1800 118 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 3 run fill 1800 118 2125 1800 118 2127 air
execute if score #d3targetDoor value matches 5 run fill 1800 119 2125 1800 119 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 7 run fill 1800 119 2125 1800 119 2127 fire
execute if score #d3targetDoor value matches 9 run fill 1800 120 2125 1800 120 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 11 run fill 1800 120 2125 1800 120 2127 fire
execute if score #d3targetDoor value matches 13 run fill 1800 121 2125 1800 121 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 15 run fill 1800 121 2125 1800 121 2127 fire
execute if score #d3targetDoor value matches 17 run fill 1800 122 2125 1800 122 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 19 run fill 1800 122 2125 1800 122 2127 fire
execute if score #d3targetDoor value matches 21 run fill 1800 123 2125 1800 123 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 23 run fill 1800 123 2125 1800 123 2127 fire
execute if score #d3targetDoor value matches 25 run fill 1800 124 2125 1800 124 2127 dark_oak_slab[type=top]
execute if score #d3targetDoor value matches 27 run fill 1800 124 2125 1800 124 2127 fire

execute if score #d3targetDoor value matches 21 run fill 1800 118 2125 1800 118 2127 air
execute if score #d3targetDoor value matches 23 run fill 1800 119 2125 1800 119 2127 air
execute if score #d3targetDoor value matches 25 run fill 1800 120 2125 1800 120 2127 air
execute if score #d3targetDoor value matches 27 run fill 1800 121 2125 1800 121 2127 air
execute if score #d3targetDoor value matches 29 run fill 1800 122 2125 1800 122 2127 air
execute if score #d3targetDoor value matches 31 run fill 1800 123 2125 1800 123 2127 air
execute if score #d3targetDoor value matches 33 run fill 1800 124 2125 1800 124 2127 air