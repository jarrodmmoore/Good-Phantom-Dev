#respawn if we fall into the water pit
execute as @a[tag=playing,scores={check=..4,location_x=-3913..-3902,inWater=1..,location_z=-10..25}] run function phan:levels/deep_dive/versus_act_3_reset1
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={check=..4,location_x=-3913..-3902,inWater=1..,location_z=-10..25}] run function phan:levels/deep_dive/versus_act_3_reset1_bot