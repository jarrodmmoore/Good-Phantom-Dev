execute if score #d3arenaProgress value matches 24 run fill 1313 109 2141 1315 112 2141 structure_void replace iron_bars

execute if score #d3arenaProgress value matches 24 run fill 1325 101 2142 1329 101 2142 air
execute if score #d3arenaProgress value matches 26 run fill 1325 102 2142 1329 102 2142 air
execute if score #d3arenaProgress value matches 28 run fill 1325 103 2142 1329 103 2142 air
execute if score #d3arenaProgress value matches 30 run fill 1325 104 2142 1329 104 2142 air
execute if score #d3arenaProgress value matches 32 run fill 1325 105 2142 1329 105 2142 air
execute if score #d3arenaProgress value matches 34 run fill 1325 106 2142 1329 106 2142 air
execute if score #d3arenaProgress value matches 34 run scoreboard players set #area3SpawnC value 0

scoreboard players add #d3arenaProgress value 1
scoreboard players set #d3arenaCheckDelay value 100