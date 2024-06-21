tag @e[tag=selected,tag=checkpoint,tag=checkFlyRespawn] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkFlyRespawn
tag @e[tag=removeCalc] remove checkFlyRespawn
tag @e[tag=removeCalc] remove removeCalc

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
tellraw @s ["",{"text":" > toggled upward launch on respawn for selected checkpoints"}]