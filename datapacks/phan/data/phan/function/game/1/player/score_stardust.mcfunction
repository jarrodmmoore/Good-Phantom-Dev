clear @s yellow_wool 1
scoreboard players set @s stardustDelay 2
scoreboard players add @s stardustCollected 1

playsound minecraft:block.amethyst_block.hit master @a ~ ~1 ~ 2 1.3

scoreboard players add @s addScore 50
function phan:game/1/player/count_combo