#phantom racer text should go away and get deleted
data merge entity @s {teleport_duration:15,start_interpolation:-1,interpolation_duration:15,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute at @s run tp @s ~ ~-4 ~
scoreboard players set @s lifespan 15
tag @s remove tvLogo