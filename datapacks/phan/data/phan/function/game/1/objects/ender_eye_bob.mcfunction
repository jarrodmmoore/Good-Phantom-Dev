tag @s[tag=goUp] add goDown
tag @s[tag=!goUp] add goUp
tag @s[tag=goDown] remove goUp

#bob at slightly different speeds so these aren't all in sync
execute store result score #random value run random value 1..10

#bobTime is 45 + (random 1..10)
scoreboard players operation @s bobTime = #random value
scoreboard players add @s bobTime 40

#slow translation change
#up
execute if score #random value matches 1 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 2 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:41,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 3 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:42,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 4 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:43,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 5 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:44,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 6 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:45,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 7 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:46,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 8 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:47,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 9 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:48,transformation:{translation:[0.0f,0.15f,0.0f]}}
execute if score #random value matches 10 if entity @s[tag=goUp] run data merge entity @s {start_interpolation:0,interpolation_duration:49,transformation:{translation:[0.0f,0.15f,0.0f]}}
#down
execute if score #random value matches 1 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 2 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:41,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 3 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:42,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 4 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:43,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 5 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:44,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 6 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:45,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 7 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:46,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 8 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:47,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 9 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:48,transformation:{translation:[0.0f,-0.15f,0.0f]}}
execute if score #random value matches 10 if entity @s[tag=goDown] run data merge entity @s {start_interpolation:0,interpolation_duration:49,transformation:{translation:[0.0f,-0.15f,0.0f]}}

tag @s[tag=goDown] remove goDown
