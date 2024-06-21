#start the sequence when player is in the colosseum
execute if score #d3arenaProgress value matches 0 if entity @a[tag=playing,gamemode=adventure,x=1367,y=115,z=2161,distance=..75] run function phan:levels/shattered_city/area_3_progress/spawn_1

#gates need to be closed initially!
execute if score #d3arenaProgress value matches ..2 if score #5Hz value matches 0 run function phan:levels/shattered_city/area_3_progress/make_sure_gates_are_closed
execute if score #d3arenaProgress value matches ..2 if score #5Hz value matches 1 run function phan:levels/shattered_city/area_3_progress/make_sure_jump_pads_are_off

#listen for enemies killed in area 1
execute if score #d3arenaProgress value matches 1 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area1SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 2 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area1SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 3..21 run function phan:levels/shattered_city/area_3_progress/gate_open_2
execute if score #d3arenaProgress value matches 2 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_y=..115,location_z=2182..}] showEnemyCount 1

#listen for enemies killed in area 2
execute if score #d3arenaProgress value matches 22 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area2SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 23 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area2SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 24..34 run function phan:levels/shattered_city/area_3_progress/gate_open_3
execute if score #d3arenaProgress value matches 23 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=..1342,location_z=2138..}] showEnemyCount 1

#listen for enemies killed in area 3
execute if score #d3arenaProgress value matches 35 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area3SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 36 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area3SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 37..51 run function phan:levels/shattered_city/area_3_progress/gate_open_4
execute if score #d3arenaProgress value matches 36 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=..1348,location_z=..2138}] showEnemyCount 1

#listen for enemies killed in area 4
execute if score #d3arenaProgress value matches 52 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area4SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 53 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area4SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 54..66 run function phan:levels/shattered_city/area_3_progress/gate_open_5
execute if score #d3arenaProgress value matches 53 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=1348..,location_z=..2148}] showEnemyCount 1

#listen for enemies killed in area 5
execute if score #d3arenaProgress value matches 67 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area5SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 68 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area5SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 69..175 run function phan:levels/shattered_city/area_3_progress/gate_open_final
execute if score #d3arenaProgress value matches 68 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=1385..,location_z=..2182}] showEnemyCount 1

#loop!
execute if score #d3arenaProgress value matches 176.. run scoreboard players set #d3arenaProgress value 1000