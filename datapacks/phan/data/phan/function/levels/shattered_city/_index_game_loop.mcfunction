#area loops
execute if entity @a[tag=playing,scores={pCurrentArea=1}] in the_end run function phan:levels/shattered_city/area_1_loop
execute if entity @a[tag=playing,scores={pCurrentArea=2}] in the_end run function phan:levels/shattered_city/area_2_loop
execute if entity @a[tag=playing,scores={pCurrentArea=3}] in the_end run function phan:levels/shattered_city/area_3_loop

#levitation from wind gusts
execute as @a[tag=playing,scores={levitateState=1..}] run function phan:levels/shattered_city/wind_gust_levitation

#rising cloud effect
execute as @e[type=area_effect_cloud,tag=gustVisual] at @s run function phan:levels/shattered_city/wind_gust_visual