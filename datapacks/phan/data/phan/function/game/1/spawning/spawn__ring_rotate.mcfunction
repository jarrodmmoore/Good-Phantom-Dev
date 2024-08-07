execute store result score #getRot value run data get entity @s Rotation[0] 1
execute if score #getRot value matches ..-1 run scoreboard players add #getRot value 360
execute if score #getRot value matches 361.. run scoreboard players remove #getRot value 360
execute store result score #getRot2 value run data get entity @s Rotation[1] 1

#store rotation?
scoreboard players operation @s editYaw = #getRot value
scoreboard players operation @s editPitch = #getRot2 value

#angles
execute if score #getRot2 value matches -80..80 if score #getRot value matches 0..22 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[0.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 23..67 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[45.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 68..112 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[90.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 113..157 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[135.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 158..202 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[135.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 203..247 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[225.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 248..292 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[270.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 293..337 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[315.0f,0.0f]}
execute if score #getRot2 value matches -80..80 if score #getRot value matches 338.. run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[0.0f,0.0f]}

#vertical ones, too
execute if score #getRot2 value matches ..-81 run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[0.0f,-90.0f]}
execute if score #getRot2 value matches 81.. run data merge entity @e[tag=setMe,limit=1,type=item_display,distance=..2] {Rotation:[0.0f,90.0f]}