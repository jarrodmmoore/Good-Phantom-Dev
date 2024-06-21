scoreboard players remove @s editArg1 1
execute if score @s editArg1 matches ..0 positioned ~-7 ~ ~-7 if entity @a[dx=15,dy=4,dz=15] positioned ~7 ~ ~7 run function phan:game/0/z_spawn
execute if score @s editArg1 matches ..0 run scoreboard players set @s editArg1 1

#particles indicate whether the level is completed or not
execute if score #2sec value matches 0 run function phan:game/0/level_entry_happy_sad_particles