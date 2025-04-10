execute store result score #checkMinX value run data get entity @s Pos[0] 1
execute store result score #checkMinY value run data get entity @s Pos[1] 1
execute store result score #checkMinZ value run data get entity @s Pos[2] 1

execute as @e[tag=selected,tag=checkpoint] run scoreboard players operation @s checkMaxX = #checkMinX value
execute as @e[tag=selected,tag=checkpoint] run scoreboard players operation @s checkMaxY = #checkMinY value
execute as @e[tag=selected,tag=checkpoint] run scoreboard players operation @s checkMaxZ = #checkMinZ value

execute as @e[tag=selected,tag=resetZone] run scoreboard players operation @s checkMaxX = #checkMinX value
execute as @e[tag=selected,tag=resetZone] run scoreboard players operation @s checkMaxY = #checkMinY value
execute as @e[tag=selected,tag=resetZone] run scoreboard players operation @s checkMaxZ = #checkMinZ value

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > Maximum trigger coordinates set to x="},{score:{name:"#checkMinX",objective:"value"}},{text:", y="},{score:{name:"#checkMinY",objective:"value"}},{text:", z="},{score:{name:"#checkMinZ",objective:"value"}}]

scoreboard players set @s editVisualTimer 0