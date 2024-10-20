#count down to 0
scoreboard players remove @s lifespan 1
#die if 0 or below
execute if score @s lifespan matches ..0 at @s run function phan:common/lifespan_expire