#warp to a future checkpoint, either real or optional

#depending on how far we want to go, we may skip over a few.
#minimum distance warped depends on how far behind 1st we are.

#track when we need to stop
scoreboard players set #endWarp value 0
scoreboard players set #warpedToPortal value 0

#store how far behind 1st we are
scoreboard players operation #timeBehind1st value = @s timeBehind1st

#get one jump for free no matter what
scoreboard players set #warpLimit value 999
scoreboard players set #minWarpDistance value 10000
function phan:items/use/warp_race_try

#subsequent checkpoints: must be within our warp range (determined by how far behind 1st we are)
scoreboard players set #minWarpDistance value 0
execute if score #timeBehind1st value matches 100..119 run scoreboard players set #minWarpDistance value 7
execute if score #timeBehind1st value matches 120..139 run scoreboard players set #minWarpDistance value 14
execute if score #timeBehind1st value matches 140..159 run scoreboard players set #minWarpDistance value 21
execute if score #timeBehind1st value matches 160..179 run scoreboard players set #minWarpDistance value 28
execute if score #timeBehind1st value matches 180..189 run scoreboard players set #minWarpDistance value 35
execute if score #timeBehind1st value matches 190..204 run scoreboard players set #minWarpDistance value 42
execute if score #timeBehind1st value matches 205..229 run scoreboard players set #minWarpDistance value 49
execute if score #timeBehind1st value matches 230..244 run scoreboard players set #minWarpDistance value 56
execute if score #timeBehind1st value matches 245.. run scoreboard players set #minWarpDistance value 63

#also limit the number of jumps we can make depending on time behind 1st (reason: track could make a u-turn allowing for an unusually long warp in some part of the track)
scoreboard players set #warpLimit value 4
execute if score #timeBehind1st value matches ..289 run scoreboard players set #warpLimit value 3
execute if score #timeBehind1st value matches ..214 run scoreboard players set #warpLimit value 2
execute if score #timeBehind1st value matches ..139 run scoreboard players set #warpLimit value 1

#take off 1 warp before we start, just to make number add up...
scoreboard players remove #warpLimit value 1
execute if score #warpLimit value matches ..0 run scoreboard players set #endWarp value 1

#do up to 4 more jumps
execute unless score #endWarp value matches 1 run function phan:items/use/warp_race_try
execute unless score #endWarp value matches 1 run function phan:items/use/warp_race_try
execute unless score #endWarp value matches 1 run function phan:items/use/warp_race_try
execute unless score #endWarp value matches 1 run function phan:items/use/warp_race_try

#not successful? exit now and don't warp
execute if score #success value matches 0 run return 0


#=====

#if successful, play sounds and teleport to new coordinates (only the ones obtained at the furthest checkpoint we collected)

#sound/particle
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20

#go to location
scoreboard players operation @s goto_x = @s vsRespawnX
scoreboard players operation @s goto_y = @s vsRespawnY
scoreboard players operation @s goto_z = @s vsRespawnZ
scoreboard players operation @s goto_yaw = @s vsRespawnYaw
scoreboard players operation @s goto_pitch = @s vsRespawnPitch
execute unless score #warpedToPortal value matches 1 run function phan:warp_to_saved_coords/_go

#cancel momentum
execute at @s run tp @s @s

#get vertical launch if that's a thing we have
execute unless score #warpedToPortal value matches 1 if score @s vsRespawnLaunch matches 1.. run function phan:items/launch_effect