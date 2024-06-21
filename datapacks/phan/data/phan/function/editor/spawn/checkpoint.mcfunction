#get default values

#trigger boundaries
execute store result score @s checkMinX run data get entity @s Pos[0] 1
execute store result score @s checkMinY run data get entity @s Pos[1] 1
execute store result score @s checkMinZ run data get entity @s Pos[2] 1
execute store result score @s checkMaxX run data get entity @s Pos[0] 1
execute store result score @s checkMaxY run data get entity @s Pos[1] 1
execute store result score @s checkMaxZ run data get entity @s Pos[2] 1
scoreboard players remove @s checkMinX 5
scoreboard players remove @s checkMinY 1
scoreboard players remove @s checkMinZ 5
scoreboard players add @s checkMaxX 5
scoreboard players add @s checkMaxY 15
scoreboard players add @s checkMaxZ 5

#visual line
scoreboard players set @s visualXoffset 0
scoreboard players set @s visualYoffset 0
scoreboard players set @s visualZoffset 0
scoreboard players set @s visualYaw 0
scoreboard players set @s visualPitch 0
scoreboard players set @s visualLength 0