#check if we need to respawn stuff!
execute if score #versusSpawn value matches 0 run function phan:game/1/spawning/reset/reset_versus
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 as @e[type=marker,tag=podiumRelevant] at @s run function phan:game/5/spawning/check_area_generic

#objects do their thing
execute as @e[tag=checkValid] at @s run function phan:game/5/objects/_index