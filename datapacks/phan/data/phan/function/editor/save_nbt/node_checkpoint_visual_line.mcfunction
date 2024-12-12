#array of 6 ints
data modify entity @s data.VisualLine set value [0,0,0,0,0,0]

execute store result entity @s data.VisualLine[0] int 1 run scoreboard players get @s visualXoffset
execute store result entity @s data.VisualLine[1] int 1 run scoreboard players get @s visualYoffset
execute store result entity @s data.VisualLine[2] int 1 run scoreboard players get @s visualZoffset
execute store result entity @s data.VisualLine[3] int 1 run scoreboard players get @s visualYaw
execute store result entity @s data.VisualLine[4] int 1 run scoreboard players get @s visualPitch
execute store result entity @s data.VisualLine[5] int 1 run scoreboard players get @s visualLength