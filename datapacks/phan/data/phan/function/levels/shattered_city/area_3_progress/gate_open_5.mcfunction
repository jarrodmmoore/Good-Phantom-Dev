#jordan is now allowed to use the magic pad
execute if score #d3arenaProgress value matches 54 run fill 1392 103 2174 1394 103 2176 blue_glazed_terracotta

execute if score #d3arenaProgress value matches 54 run fill 1378 102 2128 1382 102 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 56 run fill 1378 103 2128 1382 103 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 58 run fill 1378 104 2128 1382 104 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 60 run fill 1378 105 2128 1382 105 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 62 run fill 1378 106 2128 1382 106 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 64 run fill 1378 107 2128 1382 107 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 66 run fill 1378 108 2128 1382 108 2133 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 66 run scoreboard players set #area5SpawnC value 0

scoreboard players add #d3arenaProgress value 1
scoreboard players set #d3arenaCheckDelay value 100