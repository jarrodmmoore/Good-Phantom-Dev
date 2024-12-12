#instead of setting velocity directly, let's try adding to it to mimic minecraft air acceleration
#(note: lower scale on the data get Motion[X] means bot will have higher air mobility)
#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_dx value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#y
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_dy value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
execute store result score #test value run data get entity @s Motion[2] 2500
scoreboard players operation #test value += #coord_dz value
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test value

#non-additive
#execute store result entity @s Motion[0] double 0.0156 run scoreboard players get #coord_dx value
#execute store result entity @s Motion[1] double 0.0156 run scoreboard players get #coord_dy value
#execute store result entity @s Motion[2] double 0.0156 run scoreboard players get #coord_dz value