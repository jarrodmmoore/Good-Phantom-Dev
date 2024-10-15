#entity 0000007b-0000-00a0-0000-000a0000003c must exist before running! ;)

scoreboard players set #OnGround value 0
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set #OnGround value 1

#face the target point (unless we're mid-air, in which case don't tp since it cancels y velocity) via /rotate
execute if score #OnGround value matches 1 facing entity 0000007b-0000-00a0-0000-000a0000003c feet rotated ~ 0 run rotate @s ~ ~

#record our position
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000

#cheesy way of getting a velocity vector in the direction we're facing
execute unless entity @s[type=iron_golem] facing entity 0000007b-0000-00a0-0000-000a0000003c feet rotated ~ 0 if loaded ^ ^ ^0.001 run summon marker ^ ^ ^0.001 {UUID:[I;777,0,0,1]}
execute if entity @s[type=iron_golem] facing entity 0000007b-0000-00a0-0000-000a0000003c feet rotated ~ 0 if loaded ^ ^ ^0.00075 run summon marker ^ ^ ^0.00075 {UUID:[I;777,0,0,1]}
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dx value run data get entity @s Pos[0] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dz value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_dx value -= #coord_x value
scoreboard players operation #coord_dz value -= #coord_z value

#give ourselves the right velocity
execute if score #OnGround value matches 1 store result entity @s Motion[0] double 0.0045 run scoreboard players get #coord_dx value
execute if score #OnGround value matches 1 store result entity @s Motion[2] double 0.0045 run scoreboard players get #coord_dz value
#less velocity if airborne
execute if score #OnGround value matches 0 store result entity @s Motion[0] double 0.0035 run scoreboard players get #coord_dx value
execute if score #OnGround value matches 0 store result entity @s Motion[2] double 0.0035 run scoreboard players get #coord_dz value

#get rid of that marker we used to grab second position
kill 00000309-0000-0000-0000-000000000001