#flip the rocket's direction
execute at @s facing entity @a[tag=blastSelf,limit=1] eyes rotated ~180 ~ run tp @s ~ ~ ~ ~ ~
execute store result score #rot_pitch value run data get entity @s Rotation[1] 100
scoreboard players operation #rot_pitch value *= #-1 value
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #rot_pitch value
#rocket belongs to US now!
scoreboard players operation @s playerID = #attackerID value
tag @s add reflectedProjectile