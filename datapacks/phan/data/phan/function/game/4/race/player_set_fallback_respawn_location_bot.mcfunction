#set current location as fallback respawn location
execute store result score #fallbackRespawnX value run data get entity @s Pos[0]
execute store result score #fallbackRespawnY value run data get entity @s Pos[1]
execute store result score #fallbackRespawnZ value run data get entity @s Pos[2]
execute store result score #fallbackRespawnYaw value run data get entity @s Rotation[0]
execute store result score #fallbackRespawnPitch value run data get entity @s Rotation[1]
scoreboard players set #fallbackRespawnExists value 1