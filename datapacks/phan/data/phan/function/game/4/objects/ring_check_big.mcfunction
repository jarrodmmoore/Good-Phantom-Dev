scoreboard players operation #thisRingID value = @s ringID
execute store result score #ringBoost value if entity @s[tag=ringBoost]

execute as @a[tag=playing,gamemode=adventure,distance=..3] run function phan:game/4/objects/ring_try_collect