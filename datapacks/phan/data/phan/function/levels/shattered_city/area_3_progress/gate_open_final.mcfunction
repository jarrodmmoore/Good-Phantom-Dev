#open gate
execute if score #d3arenaProgress value matches 69 run fill 1390 104 2177 1400 104 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 71 run fill 1390 105 2177 1400 105 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 73 run fill 1390 106 2177 1400 106 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 75 run fill 1390 107 2177 1400 107 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 77 run fill 1390 108 2177 1400 108 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 79 run fill 1390 109 2177 1400 109 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 81 run fill 1390 110 2177 1400 110 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 83 run fill 1390 111 2177 1400 111 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 85 run fill 1390 112 2177 1400 112 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 87 run fill 1390 113 2177 1400 113 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 89 run fill 1390 114 2177 1400 114 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 91 run fill 1390 115 2177 1400 115 2182 structure_void replace iron_bars
execute if score #d3arenaProgress value matches 91 run scoreboard players set #area1SpawnC value 0

#lightning strikes the jump pads
execute if score #d3arenaProgress value matches 100 run summon lightning_bolt 1389 101 2145
execute if score #d3arenaProgress value matches 100 run fill 1388 101 2144 1390 101 2146 purple_glazed_terracotta

execute if score #d3arenaProgress value matches 115 run summon lightning_bolt 1389 101 2157
execute if score #d3arenaProgress value matches 115 run fill 1388 101 2156 1390 101 2158 purple_glazed_terracotta

execute if score #d3arenaProgress value matches 130 run summon lightning_bolt 1367 103 2176
execute if score #d3arenaProgress value matches 130 run fill 1366 103 2175 1368 103 2177 purple_glazed_terracotta

execute if score #d3arenaProgress value matches 145 run summon lightning_bolt 1351 100 2117
execute if score #d3arenaProgress value matches 145 run fill 1350 100 2116 1352 100 2118 lime_glazed_terracotta

execute if score #d3arenaProgress value matches 160 run summon lightning_bolt 1359 111 2151
execute if score #d3arenaProgress value matches 160 run fill 1358 111 2150 1360 111 2152 lime_glazed_terracotta

execute if score #d3arenaProgress value matches 175 run summon lightning_bolt 1367 117 2151
execute if score #d3arenaProgress value matches 175 run fill 1366 117 2150 1368 117 2152 lime_glazed_terracotta

scoreboard players add #d3arenaProgress value 1
scoreboard players set #d3arenaCheckDelay value 100