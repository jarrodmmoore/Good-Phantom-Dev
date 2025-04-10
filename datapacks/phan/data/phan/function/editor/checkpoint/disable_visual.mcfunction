scoreboard players set @e[tag=selected,tag=checkpoint] visualLength 0

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > Disabled visual line"}]