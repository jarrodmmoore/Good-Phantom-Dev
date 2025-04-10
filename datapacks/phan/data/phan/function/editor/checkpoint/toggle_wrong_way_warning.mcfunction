tag @e[tag=selected,tag=checkpoint,tag=checkWrongWay] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkWrongWay
tag @e[tag=removeCalc] remove checkWrongWay
tag @e[tag=removeCalc] remove removeCalc

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{text:" > toggled wrong way warning for selected checkpoints"}]