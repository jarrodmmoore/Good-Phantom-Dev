scoreboard players set #inRange value 0
$execute if entity @e[type=marker,tag=checkpoint,tag=posCalc,scores={versusSpawn=1,editArg1=$(targetCheckpoint)},distance=..$(minWarpDistance)] run scoreboard players set #inRange value 1
#checkpoint doesn't exist? instant stop
$execute unless entity @e[type=marker,tag=checkpoint,tag=posCalc,scores={versusSpawn=1,editArg1=$(targetCheckpoint)}] run scoreboard players set #inRange value -1

#debug
#$say tried with targetCheckpoint=$(targetCheckpoint) and minWarpDistance=$(minWarpDistance)
#tellraw @a ["",{"text":"\ninRange="},{"score":{"name":"#inRange","objective":"value"}}]

#found checkpoint? collect checkpoint and set respawn coords to its location
tag @s add warpingPlayer
$execute unless score #inRange value matches -1 as @e[type=marker,tag=checkpoint,tag=posCalc,scores={versusSpawn=1,editArg1=$(targetCheckpoint)},limit=1,sort=nearest] at @s run function phan:items/use/warp_race_collect_checkpoint
tag @s remove warpingPlayer

#did at least 1 jump? success.
execute unless score #inRange value matches -1 run scoreboard players set #success value 1

#we allowed 1 jump if not in range, but if it wasn't in range, we cancel any further jumps
execute if score #inRange value matches -1..0 run scoreboard players set #endWarp value 1