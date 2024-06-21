#listen for enemies killed in area 1
execute if score #d3arenaProgress value matches 1000 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area1SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1001 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area1SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1002 run scoreboard players set #area2SpawnC value 0
execute if score #d3arenaProgress value matches 1002 run scoreboard players set #d3arenaCheckDelay value 100
execute if score #d3arenaProgress value matches 1002 run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1001 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_y=..115,location_z=2182..}] showEnemyCount 1

#listen for enemies killed in area 2
execute if score #d3arenaProgress value matches 1003 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area2SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1004 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area2SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1005 run scoreboard players set #area3SpawnC value 0
execute if score #d3arenaProgress value matches 1005 run scoreboard players set #d3arenaCheckDelay value 100
execute if score #d3arenaProgress value matches 1005 run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1004 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=..1342,location_z=2138..}] showEnemyCount 1

#listen for enemies killed in area 3
execute if score #d3arenaProgress value matches 1006 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area3SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1007 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area3SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1008 run scoreboard players set #area4SpawnC value 0
execute if score #d3arenaProgress value matches 1008 run scoreboard players set #d3arenaCheckDelay value 100
execute if score #d3arenaProgress value matches 1008 run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1007 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=..1348,location_z=..2138}] showEnemyCount 1

#listen for enemies killed in area 4
execute if score #d3arenaProgress value matches 1009 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area4SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1010 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area4SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1011 run scoreboard players set #area5SpawnC value 0
execute if score #d3arenaProgress value matches 1011 run scoreboard players set #d3arenaCheckDelay value 100
execute if score #d3arenaProgress value matches 1011 run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1010 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=1348..,location_z=..2148}] showEnemyCount 1

#listen for enemies killed in area 5
execute if score #d3arenaProgress value matches 1012 if entity @e[tag=representBaddy,tag=act3Spawn,scores={area5SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1013 if score #d3arenaCheckDelay value matches ..0 unless entity @e[tag=representBaddy,tag=act3Spawn,scores={area5SpawnC=1}] run scoreboard players add #d3arenaProgress value 1
execute if score #d3arenaProgress value matches 1014 run scoreboard players set #area1SpawnC value 0
execute if score #d3arenaProgress value matches 1014 run scoreboard players set #d3arenaCheckDelay value 100
execute if score #d3arenaProgress value matches 1013 run scoreboard players set @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_x=1385..,location_z=..2182}] showEnemyCount 1
#loop!
execute if score #d3arenaProgress value matches 1014 run scoreboard players set #d3arenaProgress value 1000