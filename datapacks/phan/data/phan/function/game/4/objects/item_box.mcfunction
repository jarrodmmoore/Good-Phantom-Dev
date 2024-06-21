#collect if player touches
execute if score @s hitstun matches ..0 positioned ~-1 ~-1 ~-1 if entity @a[tag=playing,gamemode=adventure,dx=2,dy=2,dz=2] positioned ~1 ~1 ~1 run function phan:game/4/objects/item_box_check

#spin. looks cool. makes modified clients s*** themselves but they were warned to play vanilla so sorry not sorry
scoreboard players add @s bobTime 1
execute if score @s bobTime matches 82.. run scoreboard players set @s bobTime 1
execute if score @s bobTime matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.707f,0.0f,0.707f],translation:[0.0f,0.19f,0.0f],scale:[0.85f,0.85f,0.85f]}}
execute if score @s bobTime matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,0.1f,0.0f],scale:[0.85f,0.85f,0.85f]}}
execute if score @s bobTime matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.0f,0.1f,0.0f],scale:[0.85f,0.85f,0.85f]}}
execute if score @s bobTime matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-0.707f,0.0f,0.707f],translation:[0.0f,0.01f,0.0f],scale:[0.85f,0.85f,0.85f]}}
execute if score @s bobTime matches 61 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.1f,0.0f],scale:[0.85f,0.85f,0.85f]}}
