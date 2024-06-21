#flip flop forward and back motion
scoreboard players add @s editArg2 1
execute if score @s editArg2 matches 3.. run scoreboard players set @s editArg2 1

#slightly randomize the speed at which the animation happens
scoreboard players operation #random value = @e[limit=1,tag=randomize,sort=random,type=armor_stand,scores={r=1..4}] r
scoreboard players add #random value 18

#apply the transformation
execute if score @s editArg2 matches ..1 if score #random value matches ..18 run data merge entity @s {start_interpolation:0,interpolation_duration:19,transformation:{left_rotation:[0.251f,0.0f,0.0f,0.968f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches ..1 if score #random value matches 19 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.251f,0.0f,0.0f,0.968f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches ..1 if score #random value matches 20 run data merge entity @s {start_interpolation:0,interpolation_duration:21,transformation:{left_rotation:[0.251f,0.0f,0.0f,0.968f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches ..1 if score #random value matches 21.. run data merge entity @s {start_interpolation:0,interpolation_duration:22,transformation:{left_rotation:[0.251f,0.0f,0.0f,0.968f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

execute if score @s editArg2 matches 2.. if score #random value matches ..18 run data merge entity @s {start_interpolation:0,interpolation_duration:19,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches 2.. if score #random value matches 19 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches 2.. if score #random value matches 20 run data merge entity @s {start_interpolation:0,interpolation_duration:21,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s editArg2 matches 2.. if score #random value matches 21.. run data merge entity @s {start_interpolation:0,interpolation_duration:22,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

#now set a timer for when the interpolation will be finished
scoreboard players operation @s editArg1 = #random value