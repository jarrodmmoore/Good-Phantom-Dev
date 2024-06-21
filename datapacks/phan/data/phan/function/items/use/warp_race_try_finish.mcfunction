scoreboard players set #inRange value 0
$execute if entity @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..$(minWarpDistance)] run scoreboard players set #inRange value 1
#checkpoint doesn't exist? instant stop
execute unless entity @e[type=marker,tag=portalCore,scores={versusSpawn=1}] run scoreboard players set #inRange value -1

#found portal within range? just teleport straight to it
execute unless score #inRange value matches -1 at @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1,sort=nearest] run tp @s ~ ~2 ~
execute unless score #inRange value matches -1 run scoreboard players set #warpedToPortal value 1

#did a jump? success.
execute unless score #inRange value matches -1 run scoreboard players set #success value 1

#stop! this is the last warp no matter what
scoreboard players set #endWarp value 1