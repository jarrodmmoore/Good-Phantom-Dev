scoreboard players operation #thisRingID value = @s ringID
execute store result score #ringBoost value if entity @s[tag=ringBoost]

execute as @e[type=mannequin,tag=ai,distance=..2] run function phan:game/4/objects/ring_try_collect