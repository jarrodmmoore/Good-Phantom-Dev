execute store result score #vsRespawnX value run data get entity @s Pos[0]
execute store result score #vsRespawnY value run data get entity @s Pos[1]
execute store result score #vsRespawnZ value run data get entity @s Pos[2]
execute store result score #vsRespawnYaw value run data get entity @s Rotation[0]
execute store result score #vsRespawnPitch value run data get entity @s Rotation[1]

#success!
scoreboard players set #test value 1

#set cooldown
scoreboard players set @s editArg3 10