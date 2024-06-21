#get default values

#trigger boundaries
execute store result score @s checkMinX run data get entity @s Pos[0] 1
execute store result score @s checkMinY run data get entity @s Pos[1] 1
execute store result score @s checkMinZ run data get entity @s Pos[2] 1
execute store result score @s checkMaxX run data get entity @s Pos[0] 1
execute store result score @s checkMaxY run data get entity @s Pos[1] 1
execute store result score @s checkMaxZ run data get entity @s Pos[2] 1
scoreboard players remove @s checkMinX 10
scoreboard players remove @s checkMinY 0
scoreboard players remove @s checkMinZ 10
scoreboard players add @s checkMaxX 10
scoreboard players add @s checkMaxY 5
scoreboard players add @s checkMaxZ 10