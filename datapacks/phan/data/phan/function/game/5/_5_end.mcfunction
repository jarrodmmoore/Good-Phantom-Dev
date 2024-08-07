#get rid of podiums and puppets while they're still loaded
execute as @e[type=marker,tag=podiumSpawner,scores={versusSpawn=1}] at @s run function phan:game/1/spawning/podium_setup
tag @e[type=marker,tag=podiumSpawner,scores={versusSpawn=1},tag=spawn_failed] remove spawn_failed
scoreboard players set @e[type=skeleton,tag=podiumPuppet] lifespan 0

#crown the leading player
function phan:game/4/give_crown_to_point_leader
scoreboard players set #allowCrown value 1

#this session is over! can't earn any more points in here.
function phan:game/4/new_versus_session
scoreboard objectives setdisplay sidebar

#it's the lobby innit ?
scoreboard players set #test value 0
execute as @a[tag=doneWithIntro] run scoreboard players add #test value 1
execute if score #test value matches ..4 run scoreboard players set #lastLevelPlayed value 0
function phan:game/0/_0_init