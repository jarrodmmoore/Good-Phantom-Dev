#get boost (because vanilla explosion unreliable...)

#need to summon 00000309-0000-0000-0000-00000000000f before running

#teleport facing target (via /rotate for model only)
execute at @s facing entity 00000309-0000-0000-0000-00000000000f feet rotated ~ ~-30 run rotate @s ~ ~
execute on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] at @s facing entity 00000309-0000-0000-0000-00000000000f feet rotated ~ ~-30 run tp @s ~ ~ ~ ~ ~

#record our position
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_y value run data get entity @s Pos[1] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000

#cheesy way of getting a velocity vector in the direction we're facing
execute facing entity 00000309-0000-0000-0000-00000000000f feet if loaded ^ ^ ^0.0008 run summon marker ^ ^ ^0.00075 {UUID:[I;777,0,0,1]}
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dx value run data get entity @s Pos[0] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dy value run data get entity @s Pos[1] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dz value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_dx value -= #coord_x value
scoreboard players operation #coord_dy value -= #coord_y value
scoreboard players operation #coord_dz value -= #coord_z value

#in soviet russia, projectile throws you
execute on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] run function phan:bots/items/17_firework_rocket/apply_velocity_to_vehicle

#get rid of the markers we used to grab position and rotation
kill 00000309-0000-0000-0000-000000000001
kill 00000309-0000-0000-0000-00000000000f