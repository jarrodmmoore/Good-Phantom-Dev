#where am i

execute store result score @s location_x run data get entity @s Pos[0] 1
execute store result score @s location_y run data get entity @s Pos[1] 1
execute store result score @s location_z run data get entity @s Pos[2] 1
execute store result score @s location_xx run data get entity @s Pos[0] 10
execute store result score @s location_yy run data get entity @s Pos[1] 10
execute store result score @s location_zz run data get entity @s Pos[2] 10
execute store result score @s location_yaw run data get entity @s Rotation[0] 1
execute store result score @s location_pitch run data get entity @s Rotation[1] 1

#note: sneaking is when we're [tag=sneaking]

#check if we're on the ground
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s onGround 2
execute if score @s onGround matches 1 run function phan:bots/movement/get_coordinates_check_still_grounded
scoreboard players remove @s[scores={onGround=1..}] onGround 1

#check if we're in water
scoreboard players set @s inWater 1
execute positioned ~ ~.1 ~ unless block ~ ~ ~ water unless block ~ ~ ~ #phan:waterloggable[waterlogged=true] unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] unless block ~ ~ ~ #minecraft:coral_plants[waterlogged=true] unless block ~ ~ ~ tall_seagrass run scoreboard players set @s inWater 0

#check if we're flying
execute store result score @s fallFlying run execute on vehicle if entity @s[tag=botElytraHeightFix]


#kill bot if it fell into the void
execute if score @s location_y matches ..-64 run tag @s[tag=!botRespawnAdvance] add botRespawnAdvance