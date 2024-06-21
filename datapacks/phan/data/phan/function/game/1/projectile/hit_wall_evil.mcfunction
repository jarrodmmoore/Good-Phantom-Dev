execute as @a[tag=playing,gamemode=adventure,distance=..2] at @s run function phan:game/1/projectile/get_hit_evil
execute as @e[distance=..2,tag=shootable,tag=targetNode] at @s run function phan:game/1/projectile/get_hit_index
scoreboard players set @s[scores={lifespan=2..}] lifespan 1