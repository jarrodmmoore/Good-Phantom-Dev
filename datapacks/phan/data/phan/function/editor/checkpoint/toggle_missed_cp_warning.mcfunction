tag @e[tag=selected,tag=checkpoint,tag=checkWarn] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkWarn
tag @e[tag=removeCalc] remove checkWarn
tag @e[tag=removeCalc] remove removeCalc

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > toggled missed cp warning for selected checkpoints"}]