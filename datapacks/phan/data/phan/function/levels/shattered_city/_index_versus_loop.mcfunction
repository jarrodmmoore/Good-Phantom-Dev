#reset if fallen down
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..25}] in minecraft:the_end run function phan:game/4/race/respawn

#act 1 loop
execute if score #vAct value matches 1 run function phan:levels/shattered_city/versus_area_1_loop

#act 2 loop
execute if score #vAct value matches 2 run function phan:levels/shattered_city/versus_area_2_loop

#act 3 loop
execute if score #vAct value matches 3 run function phan:levels/shattered_city/versus_area_3_loop


#levitation from wind gusts
execute as @a[tag=playing,scores={levitateState=1..}] run function phan:levels/shattered_city/wind_gust_levitation

#rising cloud effect
execute as @e[type=area_effect_cloud,tag=gustVisual] at @s run function phan:levels/shattered_city/wind_gust_visual