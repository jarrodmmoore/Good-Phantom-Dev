#this is run globally

#check if we need to respawn stuff!
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area1SpawnA value matches 0 run function phan:game/1/spawning/reset/reset1a
execute if score #area2SpawnA value matches 0 run function phan:game/1/spawning/reset/reset2a
execute if score #area3SpawnA value matches 0 run function phan:game/1/spawning/reset/reset3a
execute if score #area4SpawnA value matches 0 run function phan:game/1/spawning/reset/reset4a
execute if score #area5SpawnA value matches 0 run function phan:game/1/spawning/reset/reset5a

execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #playersInEditMode value matches 1.. if score #area1SpawnB value matches 0 run function phan:game/1/spawning/reset/reset1b
execute if score #playersInEditMode value matches 1.. if score #area2SpawnB value matches 0 run function phan:game/1/spawning/reset/reset2b
execute if score #playersInEditMode value matches 1.. if score #area3SpawnB value matches 0 run function phan:game/1/spawning/reset/reset3b
execute if score #playersInEditMode value matches 1.. if score #area4SpawnB value matches 0 run function phan:game/1/spawning/reset/reset4b
execute if score #area5SpawnB value matches 0 run function phan:game/1/spawning/reset/reset5b

execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c
execute if score #playersInEditMode value matches 1.. if score #area1SpawnC value matches 0 run function phan:game/1/spawning/reset/reset1c
execute if score #playersInEditMode value matches 1.. if score #area2SpawnC value matches 0 run function phan:game/1/spawning/reset/reset2c
execute if score #playersInEditMode value matches 1.. if score #area3SpawnC value matches 0 run function phan:game/1/spawning/reset/reset3c
execute if score #playersInEditMode value matches 1.. if score #area4SpawnC value matches 0 run function phan:game/1/spawning/reset/reset4c
execute if score #playersInEditMode value matches 1.. if score #area5SpawnC value matches 0 run function phan:game/1/spawning/reset/reset5c

execute if score #playersInEditMode value matches 1.. if score #area0SpawnD value matches 0 run function phan:game/1/spawning/reset/reset0d
execute if score #playersInEditMode value matches 1.. if score #area1SpawnD value matches 0 run function phan:game/1/spawning/reset/reset1d
execute if score #playersInEditMode value matches 1.. if score #area2SpawnD value matches 0 run function phan:game/1/spawning/reset/reset2d
execute if score #playersInEditMode value matches 1.. if score #area3SpawnD value matches 0 run function phan:game/1/spawning/reset/reset3d
execute if score #playersInEditMode value matches 1.. if score #area4SpawnD value matches 0 run function phan:game/1/spawning/reset/reset4d
execute if score #playersInEditMode value matches 1.. if score #area5SpawnD value matches 0 run function phan:game/1/spawning/reset/reset5d

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea1] at @s run function phan:game/1/spawning/check_area_generic_a
execute if score #5Hz value matches 1 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea2] at @s run function phan:game/1/spawning/check_area_generic_b
execute if score #5Hz value matches 2 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea3] at @s run function phan:game/1/spawning/check_area_generic_c
execute if score #5Hz value matches 2 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea4] at @s run function phan:game/1/spawning/check_area_generic_d

#count how long it takes to open the portal
function phan:game/0/practice/time_to_portal

#operate the portal
function phan:game/0/practice/_portal_logic_practice

#strength pad: only exists when shattered city is unlocked
execute if score #2sec value matches 0 if score #d3a1Unlocked value matches 1.. if loaded 818 31 -1061 unless block 818 31 -1061 pink_glazed_terracotta run function phan:game/0/practice/strength_pad_place
execute if score #2sec value matches 0 if score #d3a1Unlocked value matches ..0 if loaded 818 31 -1061 if block 818 31 -1061 pink_glazed_terracotta run function phan:game/0/practice/strength_pad_remove

#run code for the practice course
function phan:levels/phantom_forest/area_1_loop