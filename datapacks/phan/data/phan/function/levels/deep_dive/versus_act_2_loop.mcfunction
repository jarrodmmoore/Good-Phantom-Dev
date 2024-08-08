#teleporters
execute as @a[tag=playing] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_2_teleport
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,x=-3928,y=3,z=108,distance=..4] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_2_teleport_bot
