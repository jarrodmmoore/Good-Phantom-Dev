#get check value of our owner
scoreboard players set #test2 value 0
scoreboard players operation #getID value = @s playerID
execute as @a[tag=playing] if score @s playerID = #getID value run scoreboard players operation #test2 value = @s check

#store our coordinates
execute store result score #coord_x value run data get entity @s Pos[0]
execute store result score #coord_y value run data get entity @s Pos[1]
execute store result score #coord_z value run data get entity @s Pos[2]

#based on checkpoint, listen for when we enter checkpoint hitbox
execute if score #test2 value matches 0..4 run function phan:items/ender_pearl_listen_for_cp_1_5
execute if score #test2 value matches 5..9 run function phan:items/ender_pearl_listen_for_cp_6_10
execute if score #test2 value matches 10..14 run function phan:items/ender_pearl_listen_for_cp_11_15
execute if score #test2 value matches 15..19 run function phan:items/ender_pearl_listen_for_cp_16_20
execute if score #test2 value matches 20..24 run function phan:items/ender_pearl_listen_for_cp_21_25