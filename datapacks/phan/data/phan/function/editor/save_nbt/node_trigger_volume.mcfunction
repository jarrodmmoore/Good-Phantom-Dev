#array of 6 ints
data modify entity @s data.TriggerVolume set value [0,0,0,0,0,0]

execute store result entity @s data.TriggerVolume[0] int 1 run scoreboard players get @s checkMinX
execute store result entity @s data.TriggerVolume[1] int 1 run scoreboard players get @s checkMinY
execute store result entity @s data.TriggerVolume[2] int 1 run scoreboard players get @s checkMinZ
execute store result entity @s data.TriggerVolume[3] int 1 run scoreboard players get @s checkMaxX
execute store result entity @s data.TriggerVolume[4] int 1 run scoreboard players get @s checkMaxY
execute store result entity @s data.TriggerVolume[5] int 1 run scoreboard players get @s checkMaxZ