#act 1
execute if score #vAct value matches 1 run function phan:levels/deep_dive/versus_act_1_loop

#act 2 teleporter
execute if score #vAct value matches 2 as @a[tag=playing] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/deep_dive/versus_act_2_teleport

#act 3-- respawn if fallen into the little water pit
execute if score #vAct value matches 3 as @a[tag=playing,scores={check=..4,location_x=-3913..-3902,inWater=1..,location_z=-10..25}] run function phan:levels/deep_dive/versus_act_3_reset1