#teleporter
execute as @a[tag=playing,scores={enderEyes=..23}] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_1_teleport
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={enderEyes=..23},x=-4201,y=-16,z=140,distance=..20] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_1_teleport_bot

#falling down before you've hit the proper checkpoint causes reset
execute as @a[tag=playing,gamemode=adventure] at @s run function phan:levels/deep_dive/versus_act_1_vertical_respawn_check
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] at @s run function phan:levels/deep_dive/versus_act_1_vertical_respawn_check_bot