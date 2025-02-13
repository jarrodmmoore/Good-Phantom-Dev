scoreboard players set #noExplode value 0
execute if entity @s[tag=!mineArmed] run function phan:game/1/objects/enemy/mine_check_armed

#explode if player touches
execute positioned ~ ~0.4 ~ if entity @a[gamemode=adventure,distance=..2] if score #noExplode value matches 0 run scoreboard players set @s enemyHP 500
execute if score #botsEnabled value matches 1.. positioned ~ ~0.4 ~ if entity @e[tag=ai,type=zombie,distance=..2] if score #noExplode value matches 0 run scoreboard players set @s enemyHP 500


#random start value for spin
execute unless score @s bobTime matches 1.. store result score @s bobTime run random value 0..40

#spin. looks cool. makes modified clients s*** themselves but they were warned to play vanilla so sorry not sorry
scoreboard players add @s bobTime 1
execute if score @s bobTime matches 82.. run scoreboard players set @s bobTime 1
execute if score @s bobTime matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.707f,0.0f,0.707f],translation:[0.0f,0.07f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s bobTime matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s bobTime matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s bobTime matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-0.707f,0.0f,0.707f],translation:[0.0f,-0.07f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score @s bobTime matches 61 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

#if human-owned, show particle to owner indicating that this mine is theirs
execute if score #2sec value matches 5 if entity @s[tag=humanOwned] at @s run function phan:game/1/objects/enemy/mine_owner_particle