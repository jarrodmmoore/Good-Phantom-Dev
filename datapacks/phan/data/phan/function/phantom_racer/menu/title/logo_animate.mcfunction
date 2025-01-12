#grow and rise up into place
execute if score #tvAnimation value matches 5 run data merge entity @s {start_interpolation:-1,interpolation_duration:20,teleport_duration:20,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.85f,0.85f,0.85f]}}
execute if score #tvAnimation value matches 5 run tp @s ~ -7 118

#bob up and down
execute if score #tvAnimation value matches 145 run scoreboard players set #tvAnimation value 25
execute if score #tvAnimation value matches 25 at @s run tp @s ~ ~.1 ~
execute if score #tvAnimation value matches 45 at @s run tp @s ~ ~.05 ~
execute if score #tvAnimation value matches 65 at @s run tp @s ~ ~-.05 ~
execute if score #tvAnimation value matches 85 at @s run tp @s ~ ~-.1 ~
execute if score #tvAnimation value matches 105 at @s run tp @s ~ ~-.05 ~
execute if score #tvAnimation value matches 125 at @s run tp @s ~ ~.05 ~