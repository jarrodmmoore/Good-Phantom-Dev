#echo dance

#main loop
execute if score @s musicProgress matches 2.. run playsound minecraft:phantom_bgm/echo_dance record @s
execute if score @s musicProgress matches 2.. run scoreboard players set @s musicTime 3994

#intro
execute if score @s musicProgress matches ..1 run playsound minecraft:phantom_bgm/echo_dance_intro record @s
execute if score @s musicProgress matches ..1 run scoreboard players set @s musicTime 615
execute if score @s musicProgress matches ..1 run scoreboard players set @s musicProgress 2