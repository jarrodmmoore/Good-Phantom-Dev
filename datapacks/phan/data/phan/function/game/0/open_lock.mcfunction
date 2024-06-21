#shrink into nothing
data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[0.0f,0.0f,0.0f]}}
scoreboard players set @s lifespan 40
particle instant_effect ~ ~ ~ 0.05 0.05 0.05 .1 10 force @a[tag=doneWithIntro]
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 .65

#unlock the thing
execute if entity @s[tag=dream2lock] run scoreboard players set #dream2Opened value 1

execute if entity @s[tag=dream3lockA] run scoreboard players set #dream3OpenedA value 1
execute if entity @s[tag=dream3lockB] run scoreboard players set #dream3OpenedB value 1

execute if entity @s[tag=dream4lock] run scoreboard players set #dream4Opened value 1

execute if entity @s[tag=dream5lock] run scoreboard players set #dream5Opened value 1

#don't run again please
tag @s remove dream2lock
tag @s remove dream3lockA
tag @s remove dream3lockB
tag @s remove dream4lock
tag @s remove dream5lock