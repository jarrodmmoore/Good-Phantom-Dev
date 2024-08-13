#teleport pad
execute as @a[tag=playing] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/neon_nightway/versus_act_2_teleport
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,x=-3026,y=73,z=-20] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/neon_nightway/versus_act_2_teleport_bot