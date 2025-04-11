#grow and rise up into place
execute if score #tvAnimation value matches 4 run data merge entity @s {start_interpolation:-1,interpolation_duration:10,teleport_duration:10,transformation:{right_rotation:[0.0f,0.0f,0.2f,0.98f],scale:[0.75f,0.75f,0.75f]}}
execute if score #tvAnimation value matches 4 if score #tvMenuState10 value matches 1 run data merge entity @s {start_interpolation:-1,interpolation_duration:10,teleport_duration:10,transformation:{right_rotation:[0.0f,0.0f,0.2f,0.98f],scale:[0.75f,0.75f,0.75f]}}

#move into place
execute if score #tvAnimation value matches 5 run tp @s ~ -7.15 117