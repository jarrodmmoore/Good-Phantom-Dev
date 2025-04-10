tag @e[tag=selected,tag=checkpoint,tag=posCalc] add removeCalc
tag @e[tag=selected,tag=checkpoint] add posCalc
tag @e[tag=removeCalc] remove posCalc
tag @e[tag=removeCalc] remove removeCalc

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > toggled position calc for selected checkpoints"}]