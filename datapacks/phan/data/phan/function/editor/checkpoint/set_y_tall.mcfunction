scoreboard players set @e[tag=selected,tag=checkpoint] checkMinY -64
scoreboard players set @e[tag=selected,tag=checkpoint] checkMaxY 360

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{"text":" > Minimum y-trigger coordinate set to y=-70"}]
tellraw @s ["",{"text":" > Maximum y-trigger coordinate set to y=360"}]

scoreboard players set @s editVisualTimer 0