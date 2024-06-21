#where am i
execute store result score @s location_x run data get entity @s Pos[0] 1
execute store result score @s location_y run data get entity @s Pos[1] 1
execute store result score @s location_z run data get entity @s Pos[2] 1
execute store result score @s location_yaw run data get entity @s Rotation[0] 1
execute store result score @s location_pitch run data get entity @s Rotation[1] 1

#check if sneaking
execute unless score @s sneakTime matches 1.. run tag @s[tag=sneaking] remove sneaking
execute if score @s sneakTime matches 1.. run tag @s add sneaking
scoreboard players reset @s sneakTime

#check if we're in water
scoreboard players set @s inWater 1
execute unless block ~ ~ ~ water unless block ~ ~ ~ #phan:waterloggable[waterlogged=true] unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] unless block ~ ~ ~ #minecraft:coral_plants[waterlogged=true] unless block ~ ~ ~ tall_seagrass run scoreboard players set @s inWater 0

#check if we're flying
scoreboard players set @s fallFlying 0
execute if entity @s[nbt={FallFlying:1b}] run scoreboard players set @s fallFlying 1

#cancel elytra flight if we sneak or go in water
execute if entity @s[tag=sneaking,scores={fallFlying=1}] run clear @s elytra[custom_data~{playerEquipment:1b}]
execute if entity @s[scores={fallFlying=1,inWater=1}] run clear @s elytra[custom_data~{playerEquipment:1b}]
#Q: why do we care if a player is underwater and fallflying at the same time?
#A: because fallfying while underwater makes you swim slower!