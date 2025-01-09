#teleporters
execute as @a[gamemode=adventure,tag=playing,scores={pCurrentArea=3}] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/shattered_city/a3_teleport_index

#close gate
execute if block 1441 124 2244 target if block 1452 124 2233 target run scoreboard players set #d3targetDoor3 value 0
execute if block 1441 124 2244 target if block 1452 124 2233 target unless block 1435 121 2232 iron_bars run fill 1435 121 2227 1440 128 2232 iron_bars replace structure_void

#lightning strikes when you hit the targets
execute if score #d3lightningCheck value matches ..10 if loaded 1441 124 2244 if loaded 1452 124 2233 if entity @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3}] run scoreboard players add #d3lightningCheck value 1
execute if block 1441 124 2244 melon if score #d3lightning1 value matches 0 if score #d3lightningCheck value matches 11.. run function phan:levels/shattered_city/area_3_lightning_1
execute if block 1452 124 2233 melon if score #d3lightning2 value matches 0 if score #d3lightningCheck value matches 11.. run function phan:levels/shattered_city/area_3_lightning_2

#remember to bite, captain
execute as @a[gamemode=adventure,tag=playing,scores={pCurrentArea=3}] unless score @s biteAware matches 1 run function phan:levels/shattered_city/area_3_bite_tip

#player checks enemy progress
execute if score #d3arenaCheckDelay value matches 1.. run scoreboard players remove #d3arenaCheckDelay value 1
execute if score #d3arenaProgress value matches 0..999 run function phan:levels/shattered_city/area_3_progress/listen_loop_1
execute if score #d3arenaProgress value matches 1000..1999 run function phan:levels/shattered_city/area_3_progress/listen_loop_2

#highlight last remaining enemy
execute if score #5Hz value matches 1 run scoreboard players set #enemiesAlive value 0
execute if score #5Hz value matches 1 as @e[tag=representBaddy,tag=act3Spawn] run scoreboard players add #enemiesAlive value 1
execute if score #5Hz value matches 1 if score #enemiesAlive value matches 1 run data merge entity @e[tag=representBaddy,tag=act3Spawn,limit=1,sort=random] {Glowing:1b}

#open gate
execute if block 1441 124 2244 melon if block 1452 124 2233 melon run scoreboard players add #d3targetDoor3 value 1

#door animates
execute if score #d3targetDoor3 value matches 1 run fill 1435 121 2227 1440 121 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 4 run fill 1435 122 2227 1440 122 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 7 run fill 1435 123 2227 1440 123 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 10 run fill 1435 124 2227 1440 124 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 13 run fill 1435 125 2227 1440 125 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 16 run fill 1435 126 2227 1440 126 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 19 run fill 1435 127 2227 1440 127 2232 structure_void replace iron_bars
execute if score #d3targetDoor3 value matches 22 run fill 1435 128 2227 1440 128 2232 structure_void replace iron_bars

#music is stopped until player enters colosseum
execute if score #scAct3Music value matches 0 run scoreboard players set @a[scores={pCurrentArea=3}] musicTime 20
