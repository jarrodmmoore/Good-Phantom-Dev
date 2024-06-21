#teleporter
execute as @a[tag=playing,scores={enderEyes=..23}] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_1_teleport

#falling down before you've hit the proper checkpoint causes reset
execute as @a[tag=playing,gamemode=adventure] at @s run function phan:levels/deep_dive/versus_act_1_vertical_respawn_check