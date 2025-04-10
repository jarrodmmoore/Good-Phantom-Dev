execute store result score @s visualXoffset run data get entity @s Pos[0] 10
execute store result score @s visualYoffset run data get entity @s Pos[1] 10
execute store result score @s visualZoffset run data get entity @s Pos[2] 10

execute as @e[tag=selected,tag=checkpoint] at @s store result score @s visualXoffset run data get entity @s Pos[0] 10
execute as @e[tag=selected,tag=checkpoint] at @s store result score @s visualYoffset run data get entity @s Pos[1] 10 
execute as @e[tag=selected,tag=checkpoint] at @s store result score @s visualZoffset run data get entity @s Pos[2] 10

scoreboard players operation @e[tag=selected,tag=checkpoint] visualXoffset -= @s visualXoffset
scoreboard players operation @e[tag=selected,tag=checkpoint] visualYoffset -= @s visualYoffset
scoreboard players operation @e[tag=selected,tag=checkpoint] visualZoffset -= @s visualZoffset

#feedback
execute store result score #checkMinX value run data get entity @s Pos[0] 1
execute store result score #checkMinY value run data get entity @s Pos[1] 1
execute store result score #checkMinZ value run data get entity @s Pos[2] 1

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > Pos 1 set to x="},{score:{name:"#checkMinX",objective:"value"}},{text:", y="},{score:{name:"#checkMinY",objective:"value"}},{text:", z="},{score:{name:"#checkMinZ",objective:"value"}}]

scoreboard players set @s editVisualTimer 0